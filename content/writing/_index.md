---
title: Writing
type: landing

design:
  spacing: "3rem"

sections:
  - block: hero
    content:
      title: Writing
      text: "Essays on probability, dependence, and modeling risk where standard methods break. Looking for tutorials and technical notes? Those live in [Notes](/notes)."
    design:
      spacing:
        padding: ["3rem", 0, "1rem", 0]

  - block: collection
    id: essays
    content:
      title: ""
      count: 20
      filters:
        folders:
          - post
        category: "Essay"
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ""
        tag: ""
      offset: 0
      order: desc
      page_type: post
    design:
      view: article-grid
---
