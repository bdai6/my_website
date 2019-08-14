---
title: "Degree-aware Hybrid Graph Traversal on FPGA-HMC Platform"
authors: ["Jialiang Zhang","Jing Li"]
date: 2018-02-01
doi: "10.1145/3174243.3174245"
publication_types: ["1"]
publication: "_Proceedings of the 2018 ACM/SIGDA International Symposium on Field-Programmable Gate Arrays_"
publication_short: ""
abstract: "Graph traversal is a core primitive for graph analytics and a basis for many higher-level graph analysis methods. However, irregularities in the structure of scale-free graphs (e.g., social network) limit our ability to analyze these important and growing datasets. A key challenge is the redundant graph computations caused by the presence of high-degree vertices which not only increase the total amount of computations but also incur unnecessary random data access. In this paper, we present a graph processing system on an FPGA-HMC platform, based on software/hardware co-design and co- optimization. For the first time, we leverage the inherent graph property i.e. vertex degree to co-optimize algorithm and hardware architecture. In particular, we first develop two algorithm optimization techniques:degree-aware adjacency list reordering anddegree-aware vertex index sorting. The former can reduce the number of redundant graph computations, while the latter can create a strong correlation between vertex index and data access frequency, which can be effectively applied to guide the hardware design. We further implement the optimized hybrid graph traversal algorithm on an FPGA-HMC platform. By leveraging the strong correlation between vertex index and data access frequency made by degree-aware vertex index sorting, we develop two platform-dependent hardware optimization techniques, namely degree-aware data placement and degree-aware adjacency list compression. These two techniques together substantially reduce the amount of access to external memory. Finally, we conduct extensive experiments on an FPGA-HMC platform to verify the effectiveness of the proposed techniques. To the best of our knowledge, our implementation achieves the highest performance (45.8 billion traversed edges per second) among existing FPGA-based graph processing systems."
summary: ""
tags: ["conference"," graph processor"," hybrid memory cube"," bfs"]
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

(Acceptance Rate*: underline24%)
