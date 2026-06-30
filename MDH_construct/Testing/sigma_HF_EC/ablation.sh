#!/usr/bin/env bash

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

# Define the 4 configurations for the ablation study
LIB_SETS="legacy ablation_jaffar ablation_infra current"

# Direct all output to ablation.res
exec > "$SCRIPT_DIR/ablation.res" 2>&1

run_ablation_col() {
  local lib_set="$1"
  local log_dir="$SCRIPT_DIR/logs/ablation/$lib_set"

  mkdir -p "$log_dir"

  echo -e "\n########################################"
  echo "Starting Sigma Collision Ablation with LIB_SET=$lib_set"
  echo "########################################"

  echo -e "\nSigma with collision (col=1): running..."
  # Executing make strictly for the collision target
  time make -C "$ROOT_DIR" sigma=1 col=1 LIB_SET="$lib_set" > "$log_dir/LOG_col.txt"
  
  grep RESULT "$log_dir/LOG_col.txt" || echo "No RESULT lines found"
  echo -e "Completed $lib_set"
}

for lib_set in $LIB_SETS; do
  run_ablation_col "$lib_set"
done

echo -e "\n########################################"
echo -e "Generated Sigma Ablation log files:"
find "$SCRIPT_DIR/logs/ablation" -type f -name "LOG_col.txt" | sort || echo "No log files found"