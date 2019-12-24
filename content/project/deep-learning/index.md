---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: "Deep Learning and AI"
summary: "An *alternative, and more principled approach* to guide accelerator architecture design and optimization"
authors: [jialiang-zhang]
tags: [deep learning, DNN, AI, FPGA, roofline model, convolutional neural network, CNN]
categories: []
date: 2019-08-16T15:57:51-05:00

weight: 11

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
Deep neural networks (DNNs) deliver impressive results for a variety of challenging tasks in computer vision, speech recognition, and natural language processing, at the cost of higher computational complexity and larger model size. To reduce the load of taxing DNN infrastructures, a number of FPGA-based DNN accelerators have been proposed via new micro-architectures, data ow optimizations, or algorithmic transformation. Due to the extremely large design space, it is challenging to attain good insights on how to design optimal accelerators on a target FPGA.

In this research, we take an *alternative, and more principled approach to guide accelerator architecture design and optimization*. We borrow the insights from the roofline model and further improve it by taking both on-chip and off-chip memory bandwidth into consideration. We apply the model to quantify the difference between available resources provided by native hardware (FPGA devices) and actual resources demanded by the application (CNN classification kernel). To tackle the problem, we develop a number of hardware/software techniques and implement them on FPGA [[Zhang2017FPGA-CNN](/publication/zhang-2017-fpga-cnn)]. The demonstrated accelerator was recognized as the highest performance and the most energy efficient accelerator for dense convolutional neural network (CNN) compared to the state-of-the-art FPGA-based designs.
