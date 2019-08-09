---
title: Open Source Computer System Infrastructure
linktitle: Open Source Computer System Infrastructure
toc: true
type: docs
date: "2019-05-05T00:00:00+01:00"
draft: true
menu:
  research:
    parent: Augumenting Computer Systems
    weight: 3

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 3
---

Hardware-software co-design studies targeting next-generation computer systems that are equipped with emerging memories (HBM/HMC, NVM, etc.) are fundamentally hampered by a lack of scalable, performant and accurate simulation platform. Using software simulator is fundamentally bottlenecked by the low simulation speed and low fidelity, making it impractical to run realistic software stack. Such a challenge has limited effective cross-stack innovations (across computer architecture, OS, compiler, machine learning, and domain sciences). Past efforts have largely focused on simulation infrastructure for processor cores with highly simplified models of the memory subsystem. As a key contribution to the community (including SRC JUMP centers, broad academia and industry) to better drive cross-stack memory system research, we have been developing MEG [Zhang2019FCCM] – *an open source FPGA- based simulation platform that enables cycle-exact micro-architecture simulation for computer systems with a special focus on memory subsystem* (heterogeneous memory, near/in-memory acceleration). In MEG, we combine silicon- proven RTL design of RISC-V cores with configurable heterogeneous memory subsystems (HMC/HBM/NVM). It is capable of running realistic software stacks including booting Linux and comprehensive application software with high fidelity (cycle-exact microarchitectural models derived from synthesizable RTL), flexibility (modifiable to include custom RTL user IP and/or more abstract models), reproducibility, observability, target software support and performance. MEG can be an effective complement to previous [RAMP](https://www2.eecs.berkeley.edu/Pubs/TechRpts/2006/EECS-2006-158.pdf) and more recent [Firesim](https://fires.im/) projects in covering memory space and a contribution to the open source [RISC-V](https://riscv.org/) community.
