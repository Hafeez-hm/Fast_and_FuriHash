#!/usr/bin/env bash

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

# Direct all output to ablation.res
exec > "$SCRIPT_DIR/ablation.res" 2>&1

MODELS_DIR="$ROOT_DIR/Protocols/Protocol_Models_Adapted"
DEFAULT_LOG_ROOT="$SCRIPT_DIR/logs/ablation"
LOG_ROOT="${LOG_ROOT:-$DEFAULT_LOG_ROOT}"
PV_TIMEOUT="${PV_TIMEOUT:-120}"

# Define the 4 configurations for the ablation study
LIB_SETS="legacy ablation_jaffar ablation_infra current"

# Explicitly define the subset of models to test
MODELS=("MACs.pv" "WMF-auth.pv" "Proba-pk.pv")

if ! mkdir -p "$LOG_ROOT" 2>/dev/null; then
  LOG_ROOT="$SCRIPT_DIR/logs-fallback/ablation"
  mkdir -p "$LOG_ROOT"
  echo "Warning: default logs path not writable; using $LOG_ROOT"
fi

# Verify the specific models exist before running
for model in "${MODELS[@]}"; do
  if [ ! -f "$MODELS_DIR/$model" ]; then
    echo "Error: Required model $model not found in $MODELS_DIR"
    exit 1
  fi
done

run_ablation_col() {
  local lib_set="$1"

  echo -e "\n########################################"
  echo "Starting Protosuite Collision Ablation with LIB_SET=$lib_set"
  echo "########################################"

  for model in "${MODELS[@]}"; do
    local stem="${model%.pv}"
    local model_log_dir="$LOG_ROOT/$lib_set/$stem"
    local log_file="$model_log_dir/LOG_col.txt"

    mkdir -p "$model_log_dir"

    echo -e "\n[$lib_set][col] $model: running..."

    local status
    # Force the col=1 parameter and pass the specific model
    timeout "$PV_TIMEOUT" make -C "$ROOT_DIR" protosuite=1 MODEL="$model" col=1 LIB_SET="$lib_set" > "$log_file" 2>&1
    status=$?

    if [ "$status" -eq 124 ]; then
      echo "Timed out after ${PV_TIMEOUT}s [TIMEOUT - State Explosion]"
    elif [ "$status" -ne 0 ]; then
      echo "Command exited with status $status"
    fi

    if grep -q "RESULT" "$log_file"; then
      grep "RESULT" "$log_file"
    else
      echo "No RESULT lines. First diagnostic:"
      grep -m 1 -nE "Error:|Syntax error|Cannot|not allowed|File not found" "$log_file" || head -n 5 "$log_file"
    fi
  done
  echo -e "Completed $lib_set"
}

for lib_set in $LIB_SETS; do
  run_ablation_col "$lib_set"
done

echo -e "\n########################################"
echo -e "Generated Protosuite Ablation log files:"
find "$LOG_ROOT" -type f -name "LOG_col.txt" | sort || echo "No log files found"