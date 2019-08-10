---
title: How to create an image gallery
linktitle: how to create a gallery
toc: true
type: docs
date: "2019-08-09T00:00:00+01:00"
draft: false
menu:
  notes-on-hugo-academic:
    parent: Notes
    weight: 2

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 2
---

{{% toc %}}

## Goals
I'd like to create an image gallery with the following requirement:

1. Display a collection of images (such as logos of sponsors) in the *home page*. The source code therefore will be inside a *widget page* in `content/home`. 
1. Height, width, and spacing of the images can be custom defined.
1. Able to automatically generate a gallery of all images in a directory.
1. (Optional) Captions appear upon hovering over the image.
1. (Optional) Clicking on an image will open an associated URL.


## Current solutions and issues
Refer to [Sponsers](/#sponsors). The instruction in [sourcethemes.com](https://sourcethemes.com/academic/docs/writing-markdown-latex/#image-gallery) does not work as they are for `yaml` format while the widget page uses `toml`. It turned out I had to follow [this instruction](https://github.com/gcushen/hugo-academic/issues/398#issuecomment-357444202) to create a gallery. The following lines are in the front matter of `sponsers.md`.
```toml
 # Gallery
[[gallery_item]]
album = "sponsors"
image = "darpa.jpg"
caption = "DARPA"
```
Images are uploaded to `content/img` (if not referencing image URLs
). And gallary is initialized in `sponsor.md` main body using `{``{< gallery album="sponsors" >}``}`.

Evidently from [Sponsers](/#sponsors), we have to manually enter each `gallery_item`. It is true that we can write a simple python script to automate the operation, but *the images in this gallery are not well aligned*, and *the sizes cannot be adjusted*.

## Hugo Easy Gallery
[Hugo Easy Gallery](https://www.liwen.id.au/heg/) claims to address all the issues above. And I plan to give it a try. The source code is [here](https://github.com/bdai6/hugo-easy-gallery).

### Installation instruction
#### add to my_website as a submodule
`git submodule add -f -b master https://github.com/bdai6/hugo-easy-gallery.git hugo-easy-gallery`
