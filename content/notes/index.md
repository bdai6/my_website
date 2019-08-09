---
title: Bing's notes on how to use Hugo Academic theme
summary: tips and tricks learned from building Jing's website
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
[Primary reference](https://sourcethemes.com/academic/docs/)

## Front Matter
[reference documentation](https://sourcethemes.com/academic/docs/front-matter/)

In the documentation and the example site, we will predominantly use YAML to format the front matter of *content* files and TOML to format the *configuration* files and *widget* files. 

If a content file has front matter variables set between triple-minus `---` lines, then it is YAML formatted. Otherwise, a content file will have front matter variables set between triple-plus `+++` lines, indicating that it is TOML formatted. 


## Cross-reference in Markdown
Let's say, I ready created a webpage called `cv` by following [the instruction](https://sourcethemes.com/academic/docs/managing-content/#create-a-page). `cv` is a folder within `content` folder and it has `index.md` inside. Here is the source code of `cv/index.md`:

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

What I'd like to achieve is to cross-reference some content on my website) to another page. For example, to link `cv` to this note. The [reference](https://sourcethemes.com/academic/docs/managing-content/#linking-to-your-new-page) suggests using `[My CV]{{< ref "cv/index.md" >}}` 
but somehow it doesn't work, while [My CV](/cv/) works by using `[My CV](/cv/)`. Similary, I can use [my publication in VLSI'19](/publication/zha-2019-vlsic/) with `[my publication in VLSI'19](/publication/zha-2019-vlsic/)`, where there is a `index.md` file in `/publication/zha-2019-vlsic/`;  or `[my research](/research/)` -- [my research](/research/), `[a project](/project/augmenting-computer-system)` -- [a project](/project/augmenting-computer-system), [a course](/courses/example), [a post](/post/getting-started/), etc, as long as there is a `index.md` or `_index.md` in the folder. Note that the **URL should start with a `/`** which will casue it to *correctly* concatenate itself with the root domain of your baseURL defined in `config.toml` -- `localhost:1313/post/getting-started/` in developer mode, rather than `localhost:1313/note/post/getting-started/`.