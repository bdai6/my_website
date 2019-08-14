---
title: "Boosting the Performance of FPGA-based Graph Processor Using Hybrid Memory Cube: A Case for Breadth First Search"
authors: ["Jialiang Zhang","Soroosh Khoram","Jing Li"]
date: 2017-01-01
doi: "10.1145/3020078.3021737"
publication_types: ["1"]
publication: "_Proceedings of the 2017 ACM/SIGDA International Symposium on Field-Programmable Gate Arrays_"
publication_short: ""
abstract: "Large graph processing has gained great attention in recent years due to its broad applicability from machine learning to social science. Large real-world graphs, however, are inherently difficult to process efficiently, not only due to their large memory footprint, but also that most graph algorithms entail memory access patterns with poor locality and a low compute-to-memory access ratio. In this work, we leverage the exceptional random access performance of emerging Hybrid Memory Cube (HMC) technology that stacks multiple DRAM dies on top of a logic layer, combined with the flexibility and efficiency of FPGA to address these challenges. To our best knowledge, this is the first work that implements a graph processing system on a FPGA-HMC platform based on software/hardware co-design and co-optimization. We first present the modifications of algorithm and a platform-aware graph processing architecture to perform level-synchronized breadth first search (BFS) on FPGA-HMC platform. To gain better insights into the potential bottlenecks of proposed implementation, we develop an analytical performance model to quantitatively evaluate the HMC access latency and corresponding BFS performance. Based on the analysis, we propose a two-level bitmap scheme to further reduce memory access and perform optimization on key design parameters (e.g. memory access granularity). Finally, we evaluate the performance of our BFS implementation using the AC-510 development kit from Micron. We achieved 166 million edges traversed per second (MTEPS) using GRAPH500 benchmark on a random graph with a scale of 25 and an edge factor of 16, which significantly outperforms CPU and other FPGA-based large graph processors."
summary: ""
tags: ["conference"," graph processor"," hybrid memory cube:bfs"]
categories: []
featured: false

url_pdf:
url_code:
url_dataset:
url_poster:
url_project:
url_slides:
url_source:
url_video:

image:
  caption: ""
  focal_point: ""
  preview_only: false

projects: []

slides: ""
---

(Acceptance Rate: underline25%, 25 out of 101)
