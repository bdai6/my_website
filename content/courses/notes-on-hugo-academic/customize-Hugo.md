---
title: Hugo programming
linktitle: Customize Hugo Academic with programming
toc: true
type: docs
date: "2019-08-14T00:00:00+01:00"
draft: false
menu:
  notes-on-hugo-academic:
    parent: Notes
    weight: 3

# Prev/next pager order (if `docs_section_pager` enabled in `params.toml`)
weight: 1
---

## Goal
Currently Academic lists everything (posts, publications, etc) related to the author all together under **Latest**. 
Similar to [this example](https://bromberglab.org/authors/yannick-mahlich/), we would like to list and count these items in separate sections.
The list of latest work is controlled by `/layouts/authors/list.html`. So the question is how to modify the following code to achieve our goal.
```html
    {{ $query := where .Pages ".IsNode" false }}
    {{ $count := len $query }}
    {{ if $count }}
    <div class="article-widget">
      <div class="hr-light"></div>
      <h3>{{ i18n "user_profile_latest" | default "My Latest" }}</h3>
      <ul>
        {{ range $query }}
        <li>
          <a href="{{ .RelPermalink }}">{{ .Title }}</a>
        </li>
        {{ end }}
      </ul>
    </div>
    {{ end }}
```

## Hugo templates
https://gohugo.io/templates/

## Hugo functions
https://gohugo.io/functions/

## Hugo variables
https://gohugo.io/variables/
