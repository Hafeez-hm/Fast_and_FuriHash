# Fast and Furi Hash 

**B.Tech Final Year Thesis Project**  
**NIT Calicut, 2024-25**

**Authors:** Arun Natarajan, Hafeez Muhammed  
**Advisor:** Dr. Vinod Pathari

## Overview

This project extends the work from "Hash Gone Bad" (USENIX Security'23), focusing on the ProVerif implementation of computation functions for modeling hash function weaknesses in cryptographic protocol verification.

## Goals

- Analyze the ProVerif-side implementation of computation functions
- Study hash modeling techniques in symbolic verification
- Propose improvements to the existing framework
- Explore additional hash-based protocol vulnerabilities
- Implemented and tested Jaffar's algorithm

## Quick Start


### Using Docker

#### 1. Pull the Docker Image

If you don't have the image:

```
docker pull hafeez2003/proverif-jaffar:latest
```


#### 2. Code Version Information

This repository (**Fast_and_FuriHash**) contains **only Jaffar's implementation** (all fixes applied) on the `main` branch.

- **Original code:**
  - Available at: [arunnats/hash-gone-good (main branch)](https://github.com/arunnats/hash-gone-good)
- **This repository:**
  - Contains only the improved Jaffar's implementation (no separate branch needed)

#### 3. Run the Docker Container with Volume Mount

```
docker run -it -v ~/projects/Fast_and_FuriHash:/root hafeez2003/proverif-jaffar:latest /bin/bash
```

#### 4. Navigate to Protocol Directory

Inside the container:

```
cd Proverif-Case-Studies/MDH_construct/
```

#### 5. Run the Protocols

#### 5. Run Benchmarks and Tests

- **Suttrhi's Benchmark:**
  - Run the benchmark using:
    ```
    bash benchmark.sh
    ```
  - Output will be saved in `benchmark.res`.

- **Test Our Implementation:**
  - Run the test suite using:
    ```
    bash run-benchmark.sh
    ```
  - Output will be saved in `run-benchmark.res`.

**Without collision model (faster):**

```
make sigma=1
make ike_s=1
make ike=1
```

## Repository Structure

```
├── Docker/                 # Docker build files
├── Proverif-Case-Studies/  # Original case studies from the paper
├── proverif-compfun/       # Modified ProVerif source code
├── diff-check/             # Analysis of source code changes
└── README.md
```

## Resources

- **Docker Image:** [arunnats2004/proverif-compfun](https://hub.docker.com/repository/docker/arunnats2004/proverif-compfun/general)
- **DeepWiki:** [deepwiki.com/arunnats/proverif-compfun/](https://deepwiki.com/arunnats/proverif-compfun/)
- **Original Paper:** [Hash Gone Bad (USENIX Security'23)](https://www.usenix.org/conference/usenixsecurity23/presentation/cheval)
- **Original Repository:** [charlie-j/symbolic-hash-models](https://github.com/charlie-j/symbolic-hash-models)
- **ProVerif Documentation:** [bblanche.gitlabpages.inria.fr/proverif](https://bblanche.gitlabpages.inria.fr/proverif/)

## License

This project builds upon ProVerif 2.03 (INRIA, CNRS 2000-2021) and the modifications from "Hash Gone Bad" (2023).

## Contact

- Arun Natarajan - [GitHub](https://github.com/arunnats)
- Hafeez Muhammed - [GitHub](https://github.com/Hafeez-hm)
