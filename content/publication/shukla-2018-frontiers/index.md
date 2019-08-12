---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Computing Generalized Matrix Inverse on Spiking Neural Substrate"
authors: [Rohit Shukla, Soroosh Khoram, Erik Jorgensen, Jing Li, Mikko Lipasti, Stephen Wright]
date: 2018-02-14T15:56:15-05:00
doi: "10.3389/fnins.2018.00115"

# Schedule page publish date (NOT publication's date).
publishDate: 2019-08-12T15:56:15-05:00

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["2"]

# Publication name and optional abbreviated publication name.
publication: "Frontiers in neuroscience: Neuromorphic engineering"
publication_short: ""

abstract: "Emerging neural hardware substrates, such as IBM's TrueNorth Neurosynaptic System, can provide an appealing platform for deploying numerical algorithms. For example, a recurrent Hopfield neural network can be used to find the Moore-Penrose generalized inverse of a matrix, thus enabling a broad class of linear optimizations to be solved efficiently, at low energy cost. However, deploying numerical algorithms on hardware platforms that severely limit the range and precision of representation for numeric quantities can be quite challenging. This paper discusses these challenges and proposes a rigorous mathematical framework for reasoning about range and precision on such substrates. The paper derives techniques for normalizing inputs and properly quantizing synaptic weights originating from arbitrary systems of linear equations, so that solvers for those systems can be implemented in a provably correct manner on hardware-constrained neural substrates. The analytical model is empirically validated on the IBM TrueNorth platform, and results show that the guarantees provided by the framework for range and precision hold under experimental conditions. Experiments with optical flow demonstrate the energy benefits of deploying a reduced-precision and energy-efficient generalized matrix inverse engine on the IBM TrueNorth platform, reflecting 10× to 100× improvement over FPGA and ARM core baselines."

# Summary. An optional shortened abstract.
summary: ""

tags: [spiking neural network, TrueNorth]
categories: []
featured: false

# Custom links (optional).
#   Uncomment and edit lines below to show custom links.
# links:
# - name: Follow
#   url: https://twitter.com
#   icon_pack: fab
#   icon: twitter

url_pdf:
url_code:
url_dataset:
url_poster:
url_project:
url_slides:
url_source:
url_video:

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects: []

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: ""
---
