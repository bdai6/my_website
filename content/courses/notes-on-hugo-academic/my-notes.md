---
title: Note on sourcethemes-academic
linktitle: Note on sourcethemes-academic
toc: true
type: docs
date: "2019-08-09T00:00:00+01:00"
draft: false
menu:
  notes-on-hugo-academic:
    parent: Notes
    weight: 1

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

{{% toc %}}

## Front Matter
[reference documentation](https://sourcethemes.com/academic/docs/front-matter/)

In the documentation and the example site, we will predominantly use YAML to format the front matter of *content* files and TOML to format the *configuration* files and *widget* files. 

If a content file has front matter variables set between triple-minus `---` lines, then it is YAML formatted. Otherwise, a content file will have front matter variables set between triple-plus `+++` lines, indicating that it is TOML formatted. 

## Syntax highlight
Somehow syntax highlighting with {{< hl >}}```yaml{{< /hl >}} doesn't work, {{< hl >}}```json{{< /hl >}} works instead. 

\`\`\` is highlighted by `{{``< hl >}``}the code to be highlighted{``{< hl >}``}`.

## Create a non-widget new page
By following [the instruction](https://sourcethemes.com/academic/docs/managing-content/#create-a-page), a new webpage is created by creating a folder with the new page's name in `content` and with `index.md` inside. For example, I created a webpage called `cv`.`cv` is a folder within `content` folder and it has `index.md` inside. Below is the source code of `cv/index.md`:

```json 
---
title: Jing's CV
summary: test on how to add a page to your site.
date: "2019-08-09T00:00:00Z"

reading_time: false  # Show estimated reading time?
share: false  # Show social sharing links?
profile: false  # Show author profile?
comments: false  # Show comments?

# Optional header image (relative to `static/img/` folder).
header:
  caption: ""
  image: ""
---
```

## Cross-reference and link in Markdown and shortcodes
What I'd like to achieve is to cross-reference some content on my website) to another page. For example, to link `cv` to this note. The [reference](https://sourcethemes.com/academic/docs/managing-content/#linking-to-your-new-page) suggests using `[My CV](``{``{``< ref "cv/index.md"` `>}})`, and I found 
`[My CV](/cv/)` works too ([My CV](/cv/)). Similary, I can use [my publication in VLSI'19](/publication/zha-2019-vlsic/) with `[my publication in VLSI'19](/publication/zha-2019-vlsic/)`, where there is a `index.md` file in `/publication/zha-2019-vlsic/`;  or `[my research](/research/)` -- [my research](/research/), `[a project](/project/augmenting-computer-system)` -- [a project](/project/augmenting-computer-system), [a course](/courses/example), [a post](/post/getting-started/), etc, *as long as there is a `index.md` or `_index.md` in the folder*. 

**Paths without a leading `/` will first be tried resolved relative to the current page**. Therefore the **URL should start with a `/`** which will casue it to *correctly* concatenate itself with the root domain of your baseURL defined in `config.toml` -- `localhost:1313/post/getting-started/` in developer mode, rather than `localhost:1313/<address of this note>/post/getting-started/`. 

Read [more](https://gohugo.io/content-management/cross-references/) on using shortcodes for cross-reference.

## Create a publication
Refer to [this instruction](https://sourcethemes.com/academic/docs/managing-content/#create-a-publication). The automatic import function is: 
```
academic import --bibtex <path_to_your/publications.bib>
```
Just need to make sure that the .bib file is named to be **publications.bib**

If there are some typos in the auto generated publication, or if you want to update some details about the publication, you should edit the parameters in `content/publication/<my-publication>/index.md`. 

{{% alert note %}}
`academic` package is cross-platform and can be installed with the same command `pip3 install -U academic` on Windows and macOS. However, somehow **v0.2.7** is installed on Windows while **v0.4.0** on macOS. The most distinct difference between the two versions are: v0.2.7 converts bib file to TOML format for Hugo while v0.4.0 YAML. Currently academic handles publication/talk/post webpage in **YAML**, so this convertion job should be conducted on macOS.
{{% /alert %}}

### Other approaches
I wrote a [custom python code](https://github.com/bdai6/parse_bib.git) based on `apetros/parse_bib` and [bibtexparser](https://github.com/sciunto-org/python-bibtexparser.git). It was able to create publication pages with more details than the method menthioned above. 

{{% alert note %}}
Bib items with lines commented out by `%` will be ignored by `bibtexparser`, so will by the Academic buildin tool. So make sure to clean up the bib file before running the script.
{{% /alert %}}

## Create Table of Contents
Use the `{``{% toc %\}``}` shortcode anywhere you wish within your Markdown content to automatically generate a table of contents. For example, refer to the [top of the page](#table-of-contents). 

## What shortcodes can do
[Shortcodes](https://gohugo.io/content-management/shortcodes/) are plugins which are bundled with Academic or inherited from Hugo. From previous sections, we can see that sometimes it is not as straighforward as Markdown for example in dealing with [links](#cross-reference-and-link-in-markdown-and-shortcodes). But it is actually more flexible and powerful, as we saw in the examples of  [highlighting](#syntax-highlight) and [table of contents](#create-table-of-contents), etc. One more example,
`{``{% staticref "files/CV-JingLi.pdf" "newtab" %}``}Download my CV{``{% /staticref %}``}` is able to open a new tab for {{% staticref "files/CV-JingLi.pdf" "newtab" %}}Download my CV{{% /staticref %}}, while `[Download my CV](/files/CV-JingLi.pdf)` cannot.

Some more examples can be found [here](https://sourcethemes.com/academic/docs/writing-markdown-latex/) and [here](https://gohugo.io/content-management/shortcodes/#use-hugo-s-built-in-shortcodes).

`{{% staticref "files/cv.pdf" "newtab" %}}Download my CV{{% /staticref %}}`

`[A publication]({{< ref "/publication/zha-2019-vlsic/index.md" >}})`

`[My CV]({{< ref "cv/index.md" >}})`


### More on shortcodes
**Syntax of shortcodes**: `{``{% shortcodename parameters %}``}` 

`ref` and `relref` will look up the pages by their relative path (e.g., `blog/post.md`) or their logical name (`post.md`) and return the *absolute* permalink (`ref`) or *relative* permalink (`relref`) for the found page.


## Deploy generated website to Git Pages
Before running `hugo` and `push` the generated website html code from `public` to `<user-name>.github.io`, we should do `cd publkic` and use `rm -rf *` to remove everything in `public` folder, as `hugo` does NOT clear all the previous generated files.


## Publications and other content are not sorted by newest first
Hugo/TOML require that the value for the date field should be in [TOML format](https://github.com/toml-lang/toml#local-date-time), as per frontmatter of the `content/publication/` files in the example site. If you want to use a partial date, such as year, you should still complete a full date to make a valid TOML date format.

## Insert an image with Markdown
- Image with title:
`![WiCIL logo](/img/icon-192.png "Title: WiCIL logo")`
![WiCIL logo](/img/icon-192.png "Title: WiCIL logo")

- Image with caption:
`![WiCIL logo](/img/icon-192.png "Title: WiCIL logo")*Caption: WiCIL logo*`
![WiCIL logo](/img/icon-192.png "Title: WiCIL logo")*Caption: WiCIL logo*

- Image with title, caption, and **clickable link**:
`[![WiCIL logo](/img/icon-192.png "Title: WiCIL logo")*Caption: WiCIL logo*](/#research)`
[![WiCIL logo](/img/icon-192.png "Title: WiCIL logo")*Caption: WiCIL logo*](/#research)

`*Caption: WiCIL logo*` can be removed without affecting the link. This code is essentially achieved by nesting two markdown commands, i.e., *image* `![]()` *within link* `[]()`.

## Lists with Markdown
A numbered list is created by
```
1. First
2. Second
  1. alpha
  2. beta
3. Third
```
Actually automatic increment of numbers can be achived by
```
1. First
1. Second
  1. alpha
  1. beta
1. Third
```
1. First
1. Second
  1. alpha
  1. beta
1. Third

## Associate Post, Publication, and Talk with projects
In the front matter of `index.md` of a *post, publication*, or *talk*, set `projects: ["project1", "project2"]`. Make sure each item must match a project filename exactly (without file extension) for a link to be generated. Refer to `content\publication\zha-2019-vlsic\index.md` for example. 

Similarly, a publication can associate with Markdown slides. Set `slides: "slide-name"`.