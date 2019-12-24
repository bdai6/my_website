---
draft: false
title: "Interleaved Composite Quantization for High-Dimensional Similarity Search"
authors: ["Soroosh Khoram","Stephen J Wright","Jing Li"]
date: 2019-12-18
publication: "_arXiv preprint arXiv:1912.08756_"
publication_types: ["3"]
publication_short: ""
abstract: "Similarity search retrieves the nearest neighbors of a query vector from a dataset of high-dimensional vectors. As the size of the dataset grows, the cost of performing the distance computations needed to implement a query can become prohibitive. A method often used to reduce this computational cost is quantization of the vector space and location-based encoding of the dataset vectors. These encodings can be used during query processing to find approximate nearest neighbors of the query point quickly. Search speed can be improved by using shorter codes, but shorter codes have higher quantization error, leading to degraded precision. In this work, we propose the Interleaved Composite Quantization (ICQ) which achieves fast similarity search without using shorter codes. In ICQ, a small subset of the code is used to approximate the distances, with complete codes being used only when necessary. Our method effectively reduces both code length and quantization error. Furthermore, ICQ is compatible with several recently proposed techniques for reducing quantization error and can be used in conjunction with these other techniques to improve results. We confirm these claims and show strong empirical performance of ICQ using several synthetic and real-word datasets."
summary: ""
tags: ["whitepaper"]
categories: []
featured: false

url_pdf:
url_code:
url_dataset:
url_poster:
url_project:
url_slides:
url_source: https://arxiv.org/abs/1912.08756
url_video:

image:
  caption: ""
  focal_point: ""
  preview_only: false

projects: []

slides: ""
---

