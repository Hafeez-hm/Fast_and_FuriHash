# Extending Porverif's Resolution of hash based Protocols  

**B.Tech Final Year Thesis Project**  
**NIT Calicut, 2024-25**

**Authors:**  Hafeez Muhammed, Arun Natarajan
**Advisor:** Dr. Vinod Pathari

## Overview

This project extends the work from "Hash Gone Bad" (USENIX Security'23), focusing on the ProVerif implementation of computation functions for modeling hash function weaknesses in cryptographic protocol verification.

## Goals

- Analyze the ProVerif-side implementation of computation functions
- Study hash modeling techniques in symbolic verification
- Propose improvements to the existing framework
- Explore additional hash-based protocol vulnerabilities
- Implement and evaluate axioms and unification algorithms    that improve ProVerif’s resolution for hash-based protocols.

## Repository Structure

```
├── Archives/         # Archived files and older artifacts
├── Docker/           # Docker resources and reference notes
├── MDH_construct/    # Main ProVerif framework, protocols, libs, and benchmarks
├── Protocol Models/  # Original protocol model collection
├── diff-check/       # Scripts for generating and filtering diffs
└── README.md
```

## MDH_construct Structure

The `MDH_construct/` directory is the core workspace used for protocol verification and benchmarking with both current and legacy hash-model libraries.

```
MDH_construct/
├── Makefile
├── Protocols/
├── Testing/
├── libs/
└── README.md
```

- **Makefile**: Central entry point for ProVerif runs. It selects protocol families (`ike`, `ike_s`, `sigma`, `universal`, `protosuite`), hash modes (`assoc`, `no_collision`, `collision`), and library set (`LIB_SET=current|legacy`).
- **Protocols/**: Contains all protocol specifications used by the benchmark pipeline, including the adapted protocol suite and protocol-specific declaration/model files.
- **Testing/**: Contains benchmark wrappers, per-protocol `benchmark.res` summaries, and local per-protocol log directories for reproducible runs.
- **libs/**: Contains hash-model libraries split by version:
  - `libs/current/` for the improved implementation.
  - `libs/legacy/` for the baseline/original implementation used for comparison.
  - `libs/ablation_jaffar/`: The legacy implementation extended with Jaefar's Directed Word Unification Axiom.
  - `libs/ablation_infra/`: The legacy implementation extended with structural infrastructure axioms (handling depth mismatches and concrete variable tracking).
- **README.md**: Local documentation for the MDH workspace and usage notes specific to this subproject.

## Protocol Sources /protocol directory

The protocol models present in /protocols utilized in this repository are categorized by their origin to distinguish between existing industry benchmarks and our custom-built verification challenges.

- **Baseline Protocols (IKEv2 & Sigma)**: 
  - **NDSS_ikeV2_HF_EC**, **sigma_HF_EC**, and **simplified_ikeV2_HF_EC**: These were adapted from the model collection provided in the ["Hash Gone Bad"](https://github.com/charlie-j/symbolic-hash-models) repository. They serve as the standardized benchmark suite for comparing our resolution improvements against the original implementation.
  
- **Foundational Library Models**:
  - **Protocol_Models_Adapted** (`MACs.pv`, `WMF-auth.pv`, `Proba-pk.pv`): These are adapted from the official [ProVerif distribution library](https://bblanche.gitlabpages.inria.fr/proverif/). They provide the standard, foundational proofs required for any hash-based symbolic verification suite.

- **Custom Edge-Case Challenges**:
  - **Universal_Protocol_Test**: These models were designed and implemented by us. Unlike the baseline benchmarks, this protocol was specifically engineered to stress-test the boundary conditions of our resolution axioms (e.g., highly nested associative tuples and extreme transcript depths) to ensure the framework does not exhibit state explosion or false negatives under non-standard configurations.


## Setup and Run Guide

This repository (**proverif-hash-resolution**) contains the implementation of **Jaffar's algorithm**, along with **resolution-level merge axioms** and **attacker-head variable axioms**.


## 1. Clone the Repository

```bash
git clone https://github.com/Hafeez-hm/proverif-hash-resolution.git
cd proverif-hash-resolution
```

## 2. Pull the Docker Image

```bash
docker pull hafeez2003/proverif-hash-resolution:ae-v1.0
```


## 3. Run the Docker Container

```bash
docker run -it -v $(pwd):/root/MDH_construct hafeez2003/proverif-hash-resolution:ae-v1.0 /bin/bash
```

## 4. Enter the Main Verification Workspace

Inside the container, navigate to the main workspace:

```bash
cd /root/MDH_construct
```


## 5. Running the Benchmark Suite (Head-to-Head Comparison)

Use this workflow to compare the **Current** model against the **Legacy** baseline for both correctness and performance.

```bash
cd /root/MDH_construct/Testing/<protocol_name>
bash benchmark.sh
```

### Output

```
benchmark.res
```

This file summarizes the verification results comparing the **Current** and **Legacy** models.


## 6. Running the Ablation Suite (Contribution Validation)

Use this workflow to reproduce the ablation experiments. These experiments demonstrate the individual contributions of the **Directed Word Unification algorithm** and the **Infrastructure Axioms**.

```bash
cd /root/MDH_construct/Testing/<protocol_name>
bash ablation.sh
```

### Output

```
ablation.res
```

This file summarizes the verification results for the following configurations:

- **Legacy**
- **Ablation_Jaffar**
- **Ablation_Infra**
- **Current**


## 7. View Results

### Summary Results

The summary files are located within each protocol's testing directory:

- `benchmark.res`
- `ablation.res`

### Detailed Logs

Detailed execution logs are stored in:

```
logs/
```

The logs are organized by the library set and model used during execution.

## 8. Run a Single Protocol Directly with `make`

From the main workspace (`/root/MDH_construct`), individual protocol experiments can be executed manually.

### Examples

```bash
make ike=1 LIB_SET=current
make ike=1 LIB_SET=legacy
```

### Available Protocol Selectors

- `ike`
- `ike_s`
- `sigma`
- `universal`
- `protosuite`

### 9. Main Axiom Library Files

The main axioms are implemented in:

- `libs/current/hash_no_collision.pvl`
- `libs/current/hash_collision.pvl`
- `libs/current/assoc_no_collision.pvl`

Legacy baselines are available under the same filenames in `libs/legacy/`.

### System Requirements

To ensure stable execution of the verification models, we recommend the following host specifications:

- **OS:** Linux (or Windows with WSL2).
- **RAM:** Minimum 8GB (12GB recommended). 
- **Disk Space:** At least 2GB of free space is required to accommodate the detailed execution logs generated in the `logs/` directory during a full benchmark run.
- **Docker:** Docker Engine (Version 20.10+) or Docker Desktop.

*Note: The results presented in our paper were verified on an Intel Core i5-11300H @ 3.10GHz processor with 12GB of RAM using a WSL2-based Linux environment. Experiments range from seconds to ~2 minutes per protocol. A timeout of 120s is enforced to prevent state-space explosion on complex models*

## Testing Framework Overview

The `Testing/` directory provides two complementary workflows for evaluating the verification framework:

- **Benchmark Suite** – Compares the **Current** implementation against the **Legacy** baseline in terms of verification results and execution performance.
- **Ablation Suite** – Evaluates the contribution of individual components by enabling or disabling specific sets of axioms.

Both workflows automatically execute the relevant protocol configurations and generate concise summary files along with detailed execution logs.

## Benchmark Suite

The benchmark suite performs a head-to-head comparison between the **Current** and **Legacy** models across the primary hash configurations:

- Collision (`col=1`)
- No Collision (`col=0`)
- Associative (`assoc`)

For each protocol, the benchmark records both the verification outcome and execution time.

### Output

```
benchmark.res
```

This file summarizes the verification results and performance comparison for all benchmark experiments.

## Ablation Suite

The ablation suite evaluates the contribution of the proposed resolution improvements using the collision model (`col=1`). It compares four configurations to isolate the impact of each enhancement.

### Ablation Configurations

| Configuration | Description |
|--------------|-------------|
| **Legacy** | Original baseline from *Hash Gone Bad*. |
| **Ablation_Jaffar** | Baseline with only Jaffar's Directed Word Unification. |
| **Ablation_Infra** | Baseline with only the structural normalization and infrastructure axioms. |
| **Current** | Complete implementation combining all proposed improvements. |

### Output

```
ablation.res
```

This file summarizes the verification results for all four configurations.

## Log Structure and Result Reporting

Each execution produces detailed logs in the `logs/` directory. The logs are organized according to the library set and verification model used during the experiment.

The summary files (`benchmark.res` and `ablation.res`) extract the key verification results from these logs.

Each result entry includes:

- **Protocol & Query** – The protocol and security property being verified (for example, `sessionKeyA` secrecy).
- **Result Status** – One of the following outcomes:
  - **TRUE** – The security property is verified.
  - **FALSE** – A potential attack or security violation is found.
  - **CANNOT BE PROVED** – The prover could not establish the property, typically due to unresolved Horn clauses or state-space limitations.
  - **TIMEOUT** – Verification exceeded the 120-second execution limit and was terminated.

## Resources

- **Docker Image:** [hafeez2003/proverif-hash-resolution](https://hub.docker.com/r/hafeez2003/proverif-hash-resolution)
- **DeepWiki:** [deepwiki.com/arunnats/proverif-compfun/](https://deepwiki.com/arunnats/proverif-compfun/)
- **Original Paper:** [Hash Gone Bad (USENIX Security'23)](https://www.usenix.org/conference/usenixsecurity23/presentation/cheval)
- **Original Repository:** [charlie-j/symbolic-hash-models](https://github.com/charlie-j/symbolic-hash-models)
- **ProVerif Documentation:** [bblanche.gitlabpages.inria.fr/proverif](https://bblanche.gitlabpages.inria.fr/proverif/)

## License

This project builds upon ProVerif 2.03 (INRIA, CNRS 2000-2021) and the modifications from "Hash Gone Bad" (2023).

## Contact

- Hafeez Muhammed - [GitHub](https://github.com/Hafeez-hm)
- Arun Natarajan - [GitHub](https://github.com/arunnats)
