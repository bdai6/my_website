---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "MEG"
summary: "An open source FPGA-based simulation platform for computer systems"
authors: [jialiang-zhang]
tags: [open source, FPGA, nonvolatile memory, RISC-V, in-memory, near-memory]
categories: []
date: 2019-08-16T15:58:48-05:00

weight: 5

# Optional external URL for project (replaces project detail page).
external_link: ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_code: ""
url_pdf: ""
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: ""
---
Hardware-software co-design studies targeting next-generation computer systems that are equipped with emerging memories (HBM/HMC, NVM, etc.) are fundamentally hampered by a lack of scalable, performant and accurate simulation platform. Using software simulator is fundamentally bottlenecked by the low simulation speed and low fidelity, making it impractical to run realistic software stack. Such a challenge has limited effective cross-stack innovations (across computer architecture, OS, compiler, machine learning, and domain sciences). Past efforts have largely focused on simulation infrastructure for processor cores with highly simplified models of the memory subsystem. As a key contribution to the community (including SRC JUMP centers, broad academia and industry) to better drive cross-stack memory system research, we have been developing **MEG** [[Zhang2019FCCM](/publication/zhang-s019-fccm)] – *an open source FPGA- based simulation platform that enables cycle-exact micro-architecture simulation for computer systems with a special focus on memory subsystem* (heterogeneous memory, near/in-memory acceleration). In MEG, we combine silicon- proven RTL design of RISC-V cores with configurable heterogeneous memory subsystems (HMC/HBM/NVM). It is capable of running realistic software stacks including booting Linux and comprehensive application software with high fidelity (cycle-exact microarchitectural models derived from synthesizable RTL), flexibility (modifiable to include custom RTL user IP and/or more abstract models), reproducibility, observability, target software support and performance. MEG can be an effective complement to previous [RAMP](https://www2.eecs.berkeley.edu/Pubs/TechRpts/2006/EECS-2006-158.pdf) and more recent [Firesim](https://fires.im/) projects in covering memory space and a contribution to the open source [RISC-V](https://riscv.org/) community.