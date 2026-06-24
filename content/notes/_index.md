---
title: Notes
type: landing

design:
  spacing: "3rem"

sections:
  - block: hero
    content:
      title: Notes
      text: "Tutorials and technical notes — teaching material and how-tos kept for reference. For essays, see [Writing](/writing)."
    design:
      spacing:
        padding: ["3rem", 0, "1rem", 0]

  - block: collection
    id: notes
    content:
      title: ""
      count: 20
      filters:
        folders:
          - post
        category: "Note"
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
