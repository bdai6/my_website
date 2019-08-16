---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Two Dimensional Associative Processor (2D AP)"
summary: "A radically new computing paradigm to further advance FPGA-based graph processing architectures and fundamentally address their limitations."
authors: [soroosh-khoram]
tags: [graph, associative processing, general purpose computing]
categories: []
date: 2019-08-16T16:00:10-05:00

weight: 2

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
The research project, titled "*Associative In-Memory Graph Processing Paradigm: Towards Tera-TEPS Graph Traversal In a Box*", won the **NSF CAREER Award** in 2018. In this research, we developed a radically new computing paradigm, namely two-dimensional associative processing (2D AP) to further advance our previous FPGA-based graph processing architectures and fundamentally address their limitations. Mathematically, 2D AP is a new general-purpose computing model that exploits an extra dimension of parallelism (both intra-word and inter-word parallelism) to accelerate computation as compared with traditional AP which only exploit inter-word parallelism. It is particularly beneficial for massive-scale graph processing. For the first time, we provide a theoretical proof that 2D AP is inherently more efficient as measured by "*architecturally determined complexity*" in runtime/area/energy than both von Neumann architecture and traditional AP paradigm in performing graph computation. We also provide detailed micro-architectures and circuits to best implement the proposed computing model, with domain-special language support. A preliminary published version of 2D AP [[Khoram2018CAL](khoram-2018-cal)] was recognized as **best of CAL** (IEEE Computer Architecture Letters) in 2018.
