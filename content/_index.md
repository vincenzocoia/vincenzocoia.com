---
title: 'Home'
date: 2023-10-24
type: landing

design:
  # Default section spacing
  spacing: "6rem"

sections:
  ## ------- SECTION: my picture -------
  #- block: resume-biography
  #  content:
  #    button:
  #      text: Download CV
  #      url: uploads/resume.pdf
  #    text: ""
  #    username: admin
  #  design:
  #    background:
  #      color: white
  #      image:
  #        filename: abstract_plants.jpg
  #        filters:
  #          brightness: 1
  #        parallax: true
  #        position: bottom
  #        size: cover
  #    css_class: light
  - block: cta-image-paragraph
    id: intro
    content:
      items:
        - title: Vincenzo Coia
          text: Vincenzo is a statistical data scientist specializing in innovative probabilistic modelling. He creates solutions in the applied earth sciences at BGC Engineering and develops human-centric software in R. 
          # Upload image to `assets/media/` and reference the filename here
          image: vincenzo-smiley-short.jpg
    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"
  
  ## ------- SECTION: featured work -------
  - block: collection
    content:
      count: 2
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
      subtitle: ""
      text: "Vincenzo works on real-world projects for clients, and conducts research for applications. Here are some examples."
      title: Featured Work
    design:
      spacing:
        padding:
        - 10rm
        - 0
        - 0
        - 0
      view: article-grid
    id: news
  
  ## ------- SECTION: Recent Posts -------
  - block: collection
    content:
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
      page_type: post
      subtitle: ""
      text: "Vincenzo produces content related to his work. Here are the latest entries."
      title: Posts
    design:
      spacing:
        padding:
        - 0
        - 0
        - 0
        - 0
      view: article #date-title-summary
    id: news

  ## ------- SECTION: Featured Publications -------
  #- block: collection
  #  content:
  #    filters:
  #      featured_only: true
  #      folders:
  #      - publication
  #    title: Featured Publications
  #  design:
  #    columns: 2
  #    view: citation #article-grid
  #  id: papers
  - block: collection
    content:
      title: Featured Publications
      text: ""
      filters:
        folders:
          - publication
        #exclude_featured: false
        featured_only: true
    design:
      view: citation

  ## ------ SECTION: work with me ------
  - block: hero
    content:
      title: Get Vincenzo's Help
      text: Vincenzo is keen to get involved in innovative projects, either through BGC Engineering for earth science applications, or through private consulting for all other applications. Reach out on LinkedIn!
      primary_action:
        text: LinkedIn
        url: https://www.linkedin.com/in/vincenzocoia/
        icon: rocket-launch
      secondary_action:
        text: Learn more about Vincenzo
        url: about/
      #announcement:
      #  text: "Announcing the release of version 1."
      #  link:
      #    text: "Read more"
      #    url: "/blog/"
    design:
      spacing:
        padding: [0, 0, 0, 0]
        margin: [0, 0, 0, 0]
      # For full-screen, add `min-h-screen` below
      css_class: "dark"
      background:
        color: "navy"
        image:
          # Add your image background to `assets/media/`.
          filename: bg-triangles.svg
          filters:
            brightness: 0.5
---
