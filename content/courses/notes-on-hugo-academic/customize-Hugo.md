---
title: How to customize Academic website with Hugo
linktitle: Customize Academic theme with Hugo
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
Here I will use one simple example to briefly show how to customize Academic theme with Hugo/Go programming. More information can be found from [Hugo manual](https://gohugo.io). Especially, [Introduction to Hugo templating](https://gohugo.io/templates/introduction/), [Hugo functions](https://gohugo.io/functions/), and [Hugo variables](https://gohugo.io/variables/) are helpful for beginners.

## The Example
Currently Academic lists everything (*posts*, *publications*, etc) written by the author all together under **Latest** (see the screenshot below).
![default display](/img/academic-default.png "Default")
Similar to [this example](https://bromberglab.org/authors/yannick-mahlich/), we would like to list and count these items in separate sections.
The list of latest work is controlled by `theme/academic/layouts/authors/list.html`. So the question is how to modify the following code to achieve our goal.
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

## The solution
```html
    {{/* List only publications */}}
    {{ $query := and (where .Pages ".IsNode" false) (where .Pages "Section" "publication") }}
    {{ $count := len $query }}
    {{ if $count }}
    <div class="article-widget">
      <div class="hr-light"></div>
      <h3>{{ printf "%s (%d)" (i18n "publications") $count | default "Publications" }}</h3>
      <ul>
        {{ range $query }}
        <li>
          <a href="{{ .RelPermalink }}">{{ .Title }}</a>
        </li>
        {{ end }}
      </ul>
    </div>
    {{ end }}

    {{/* List only posts */}}
    {{ $query := and (where .Pages ".IsNode" false) (where .Pages "Section" "post") }}
    {{ $count := len $query }}
    {{ if $count }}
    <div class="article-widget">
      <div class="hr-light"></div>
      <h3>{{ i18n "posts" | default "Posts"}}</h3>
      <ul>
        {{ range $query }}
        <li>
          <a href="{{ .RelPermalink }}">{{ .Title }}</a>
        </li>
        {{ end }}
      </ul>
    </div>
    {{ end }}

    {{/* List only talks */}}
    {{ $query := and (where .Pages ".IsNode" false) (where .Pages "Section" "talk") }}
    {{ $count := len $query }}
    {{ if $count }}
    <div class="article-widget">
      <div class="hr-light"></div>
      <h3>{{ i18n "talks" | default "Talks"}}</h3>
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
### Key points:

1. [Page variable](https://gohugo.io/variables/page/#page-variables) `.IsNode` always *false* for regular content pages. So `where .Pages ".IsNode" false` means finding all regular content pages. 
1. Then we use logic `and` and `where .Pages "Section" "publication"` to filter the result to get web pages that are *publications*.
1. `i18n "user_profile_latest"` corresponds to English expression `"Latest"` according to `i18n/en.yaml`. For listing publications only, it should be changed to `i18n "publications"`, i.e., `"Publications"`.
1. Use `printf "%s (%d)" (i18n "publications") $count ` to concatenate `"Publications"` and the number of publications.
1. `.Title` corresponds to the title for this page.

### Further improvement
Use the following functions and variables to further customize a Hugo template.

- `.Date` Page variable .Date pulls from the date field in a content’s front matter.

- `.Params` calls page or site variables into your template. `.Params.publication` extracts the journal/conference name in a publication page. And `.Params.location` extracts the location information.

- `markdownify` runs the provided string through the Markdown processor. So it can be used to create special effect (bold, italic, etc) on text.

**Add date and journal/conference name to publications**
```html
 <a href="{{ .RelPermalink }}">{{ .Title }}</a> ({{ dateFormat "2006" .Date }}). {{ .Params.publication | markdownify }}`
```

**Add date and location to talks**
```html
<a href="{{ .RelPermalink }}">{{ .Title }}</a>, {{ .Params.location | markdownify }}, {{ dateFormat "Jan. 1, 2006" .Date }} 
```