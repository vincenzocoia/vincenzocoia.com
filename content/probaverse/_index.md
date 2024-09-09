---
title: 'Probaverse'
date: 2023-10-24
type: landing

design:
  # Default section spacing
  spacing: "6rem"

sections:

  ## ------- SECTION: slogan -------
  - block: cta-image-paragraph
    id: intro
    content:
      items:
        - title: Probaverse
          text: The probaverse is a human-centric suite of R packages for creating and evaluating realistic probability distributions. Inspired by the tidyverse, the R packages share common design principles. The probaverse is free and open source.
          # Upload image to `assets/media/` and reference the filename here
          image: probaverse-large.png
          feature_icon: check
          features:
            - "Easily integrate your own distribution families."
            - "Manipulate distributions to create new ones."
            - "Flexible parameterization."
          button:
            text: Find it on GitHub
            url: https://github.com/probaverse/
    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"

  - block: stats
    content:
      items:
        - statistic: "1M+"
          description: |
            Websites built  
            with Hugo Blox
        - statistic: "10k+"
          description: |
            GitHub stars  
            since 2016
        - statistic: "3k+"
          description: |
            Discord community  
            for support
    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"
      # Reduce spacing
      spacing:
        padding: ["1rem", 0, "1rem", 0]

  ## ------- SECTION: testimonials -------
  - block: testimonials
    content:
      title: ""
      text: ""
      items:
        - name: "Vincenzo Coia"
          role: "Statistical Data Scientist"
          # Upload image to `assets/media/` and reference the filename here
          image: "vincenzo-smiley-headshot.jpg"
          text: "I made an early version of the probaverse to help build advanced probability models. It is now so central to my work that its expansion has become a top priority of mine."
    design:
      spacing:
        # Reduce bottom spacing so the testimonial appears vertically centered between sections
        padding: ["6rem", 0, 0, 0]
  

  ## ------- SECTION: packages -------
  - block: collection
    content:
      count: 99999
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
      text: ""
      title: Packages
    design:
      spacing:
        padding:
        - 10rm
        - 0
        - 0
        - 0
      view: article-list  # date-title-summary
    id: r_pkgs


  
  #- block: cta-card
  #  content:
  #    title: Build your future-proof website
  #    text: As easy as 1, 2, 3!
  #    button:
  #      text: Get Started
  #      url: https://hugoblox.com/templates/
  #  design:
  #    card:
  #      # Card background color (CSS class)
  #      css_class: "bg-primary-700"
  #      css_style: ""
---
