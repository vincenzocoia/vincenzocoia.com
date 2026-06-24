---
title: 'Home'
date: 2025-06-08
type: landing

design:
  # Default section spacing
  spacing: "6rem"

sections:
  ## ------- SECTION: HERO -------
  - block: hero
    id: hero
    content:
      title: "Notes on probabilistic modeling, and what we choose to model."
      text: "I'm a statistician working on uncertainty, dependence, and risk in complex systems — especially where data is thin and the extremes matter most."
      primary_action:
        text: Latest essays
        url: "#writing"
    design:
      spacing:
        padding: ["5rem", 0, "5rem", 0]
      css_class: "dark min-h-screen"
      background:
        color: "navy"
        image:
          filename: network_cloud.jpeg
          filters:
            brightness: 0.5
          parallax: true
          position: center
          size: cover

  ## ------- SECTION: WRITING (the heart of the site) -------
  - block: collection
    id: writing
    content:
      title: Writing
      text: "Essays on probability, dependence, and modeling risk under real-world constraints."
      count: 5
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
      spacing:
        padding: ["2rem", 0, "2rem", 0]

  ## ------- SECTION: THE PROBAVERSE -------
  - block: cta-image-paragraph
    id: probaverse
    content:
      items:
        - title: The Probaverse
          text: "An open-source ecosystem in R for treating probability distributions as tangible objects — the engine behind the way I think. It lets you explore the full space of possible outcomes in an analysis, rather than collapsing everything to a single number."
          feature_icon: cube
          image: probaverse-large.png
          button:
            text: Explore the Probaverse
            url: https://probaverse.com
    design:
      css_class: "bg-gray-100 dark:bg-gray-900"

  ## ------- SECTION: SELECTED WORK (supporting evidence) -------
  - block: collection
    id: work
    content:
      title: Selected Work
      text: "Applied projects where these ideas meet real systems."
      count: 3
      filters:
        author: ""
        category: ""
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ""
        tag: ""
      offset: 0
      order: desc
      page_type: project
    design:
      view: article-grid
      spacing:
        padding: ["2rem", 0, "2rem", 0]

  ## ------ SECTION: QUIET CONTACT ------
  - block: cta-image-paragraph
    id: contact
    content:
      items:
        - title: Get in touch
          text: "Working on a hard problem involving uncertainty or compound risk? I'm always glad to think it through. Reach out anytime."
          feature_icon: envelope
          image: network_city.jpeg
          button:
            text: Email me
            url: mailto:vincenzo.coia@gmail.com
---
