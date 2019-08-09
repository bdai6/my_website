---
title: Mechanisms and Abstractions for Virtualization in Cloud
linktitle: Mechanisms and Abstractions for Virtualization in Cloud
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: true
menu:
  research:
    parent: Augumenting Computer Systems
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

While traditionally being used in embedded systems, custom silicon (e.g., FPGAs) has recently begun to make their way into data centers and the cloud (Amazon AWS EC2 F1 instances, Microsoft Brainwave, Google TPU etc.). While these programmable data-flow architectures provide the lucrative benefits of fine-grained parallelism and high flexibility to accelerate a wide spectrum of applications, system support for them in the context of multi-tenant cloud environment, however, is in its infancy and has two major limitations, 1) inefficient resource management due to the tight coupling between compilation and runtime management, and 2) high programming complexity when exploiting scale-out acceleration, for which the root cause is that hardware resources are not virtualized.

In this research, we take FPGA as a case study and develop a *full stack solution* that can address these limitations and thus, enable *virtualization of FPGA clusters in multi-tenant cloud computing environment*. Specifically, the key contribution is a new system abstraction that can effectively decouple the compilation and runtime resource management. It allows applications to be compiled offline onto the proposed abstraction and resource allocation to be dynamically determined at runtime. Moreover, it creates an illusion of a single/large virtual FPGA to users, thereby reducing the programming complexity and supporting scale-out acceleration. It also provides virtualization support for the peripheral components (e.g. on-board DRAM, Ethernet), as well as protection and isolation support to ensure a secure execution in multi-tenant cloud environment.
