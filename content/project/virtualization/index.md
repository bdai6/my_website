---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Virtualization in Cloud"
summary: "Virtualization of FPGA clusters in multi-tenant cloud computing environment"
authors: [yue-zha]
tags: [virtualization, cloud, multi-tenant, FPGA]
categories: []
date: 2019-08-16T15:58:34-05:00

weight: 7

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

While traditionally being used in embedded systems, custom silicon (e.g., FPGAs) has recently begun to make their way into data centers and the cloud (Amazon AWS EC2 F1 instances, Microsoft Brainwave, Google TPU etc.). While these programmable data-flow architectures provide the lucrative benefits of fine-grained parallelism and high flexibility to accelerate a wide spectrum of applications, system support for them in the context of multi-tenant cloud environment, however, is in its infancy and has two major limitations, 1) inefficient resource management due to the tight coupling between compilation and runtime management, and 2) high programming complexity when exploiting scale-out acceleration, for which the root cause is that _hardware resources are not virtualized_.

In this research, we take FPGA as a case study and develop a *full stack solution* that can address these limitations and thus, enable *virtualization of FPGA clusters in multi-tenant cloud computing environment*. Specifically, the key contribution is a new system abstraction that can effectively decouple the compilation and runtime resource management. It allows applications to be compiled offline onto the proposed abstraction and resource allocation to be dynamically determined at runtime. Moreover, it creates an illusion of a single/large virtual FPGA to users, thereby reducing the programming complexity and supporting scale-out acceleration. It also provides virtualization support for the peripheral components (e.g. on-board DRAM, Ethernet), as well as protection and isolation support to ensure a secure execution in multi-tenant cloud environment [[Zha2020ASPLOS](/publication/zha-2020-asplos)].
