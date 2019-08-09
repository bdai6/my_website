---
title: Two-Dimensional Associative Processor
linktitle: Two-Dimensional Associative Processor
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: true
menu:
  research:
    parent: Rethinking Computer Systems
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 5
---

The research project, titled "*Associative In-Memory Graph Processing Paradigm: Towards Tera-TEPS Graph Traversal In a Box*", won the **NSF CAREER Award** in 2018. In this research, we developed a radically new computing paradigm, namely two-dimensional associative processing (2D AP) to further advance our previous FPGA-based graph processing architectures and fundamentally address their limitations. Mathematically, 2D AP is a new general-purpose computing model that exploits an extra dimension of parallelism (both intra-word and inter-word parallelism) to accelerate computation as compared with traditional AP which only exploit inter-word parallelism. It is particularly beneficial for massive-scale graph processing. For the first time, we provide a theoretical proof that 2D AP is inherently more efficient as measured by "*architecturally determined complexity*" in runtime/area/energy than both von Neumann architecture and traditional AP paradigm in performing graph computation. We also provide detailed micro-architectures and circuits to best implement the proposed computing model, with domain-special language support. A preliminary published version of 2D AP [Khoram2018CAL] was recognized as **best of CAL** (IEEE Computer Architecture Letters) in 2018.
