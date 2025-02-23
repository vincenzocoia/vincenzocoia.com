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
        - title: Vincenzo Coia, Ph.D., P.Stat. (Canada)
          text: Statistician, combining research and practice for probabilistic and risk modelling in the earth sciences.
          # Upload image to `assets/media/` and reference the filename here
          image: vincenzo-smiley-short.jpg
          button:
            text: View CV
            url: Vincenzo-Coia-public.pdf
    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"
  
  ## ------- SECTION: slogan -------
  - block: hero
    content:
      title: About
      text: I am a senior data scientist at BGC Engineering, specializing in practical and innovative probabilistic modeling. I combine advanced statistical methods with real-world applications, focusing on earth systems modelling, extreme events, and communication.
      #primary_action:
      #  text: Get Started
      #  url: https://hugoblox.com/templates/
      #  icon: rocket-launch
      #secondary_action:
      #  text: Read the docs
      #  url: https://docs.hugoblox.com
      #announcement:
      #  text: "Announcing the release of version 1."
      #  link:
      #    text: "Read more"
      #    url: "/blog/"
    #design:
    #  spacing:
    #    padding: ["1rem", 0, "1rem", 0] # [0, 0, 0, 0] ["5rem", 0, "5rem", 0]
    #    #margin: [0, 0, 0, 0]
    #  # For full-screen, add `min-h-screen` below
    #  css_class: "dark"
    #  background:
    #    color: "navy"
    #    image:
    #      # Add your image background to `assets/media/`.
    #      filename: bg-triangles.svg
    #      filters:
    #        brightness: 0.5

  ## ------- SECTION: research vision -------
  - block: collection
    content:
      title: Research Initiatives
      subtitle: ""
      text: |-
        My research focuses on expanding how we answer the question, "What's possible?"--not just "What's most likely?" I draw on the strengths of both classical statistics and machine learning, building probabilistic models of complex, interdependent systems. My work often centers on understanding extremes in climate and hydrology, where I bridge theoretical innovation with practical application.   
        
        The following are research initiatives I'm leading.
      count: 4
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
      page_type: research
    design:
      spacing:
        padding:
        - 10rm
        - 0
        - 0
        - 0
      view: card #card showcase article-grid compact citation list
    id: news

  ## ------- SECTION: bullets -------
  - block: features
    id: features
    content:
      title: Approach
      #text: 
      items:
        - name: Innovative Statistical Solutions
          icon: hero/light-bulb
          description: Leverage a robust foundation in probability theory, extreme value modeling, and machine learning to craft novel methods tailored to real-world challenges.
        - name: Comprehensive Uncertainty Analysis
          icon: hero/presentation-chart-line
          description: Isolate and communicate multiple sources of uncertainty using a tailored mix of approaches.
        - name: Practical Data Science
          icon: hero/wrench-screwdriver
          description: Ensure that all models are grounded in reality, considering data availability, domain expertise, and end-user needs, avoiding over-engineered solutions.
        - name: Reproducible and Efficient Code
          icon: code-bracket
          description: Uphold best practices in computation, using version control, defensive programming, and clear documentation to deliver projects that are both reproducible and scalable.
        - name: Dynamic Communication and Collaboration
          icon: hero/chat-bubble-left-right
          description: Foster knowledge exchange with domain experts to understand the problem space deeply, ensuring that model results are interpretable, actionable, and presented clearly.
        - name: Cutting-Edge Software Development
          icon: hero/computer-desktop
          description: Design intuitive R packages and Shiny applications, making complex analyses accessible and empowering teams to conduct probabilistic modeling seamlessly.



  ## ------- SECTION: featured work -------
  - block: collection
    content:
      count: 4
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
      #text: 
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

  ## ------- SECTION: Publications -------
  - block: collection
    content:
      title: Scholarly Publications
      text: "Articles in scientific journals, proceedings, and preprints."
      filters:
        folders:
          - publication
        #exclude_featured: false
        #featured_only: true
    design:
      view: citation

  ## ------- SECTION: Experience -------
  - block: resume-experience
    content:
      username: admin
    design:
      date_format: January 2006
      is_education_first: false

  ## ------ SECTION: work with me ------
  - block: cta-image-paragraph
    id: solutions
    content:
      items:
        - title: Have a unique challenge or project?
          text: I'm curious about projects that push boundaries and could benefit from a fresh, statistically-driven approach. If that sounds like what you have in mind, I encourage you to connect with me.
          feature_icon: check
          #features:
          #  - "Multivariate extremes"
          #  - "Risk-informed decision making"
          #  - "Mutliple application areas"
          # Upload image to `assets/media/` and reference the filename here
          image: network_city.jpeg
          button:
            text: Email
            url: mailto:vincenzo.coia@gmail.com
            
  #  - block: stats
  #  content:
  #    items:
  #      - statistic: "1M+"
  #        description: |
  #          Websites built  
  #          with Hugo Blox
  #      - statistic: "10k+"
  #        description: |
  #          GitHub stars  
  #          since 2016
  #      - statistic: "3k+"
  #        description: |
  #          Discord community  
  #          for support
  #  design:
  #    # Section background color (CSS class)
  #    css_class: "bg-gray-100 dark:bg-gray-900"
  #    # Reduce spacing
  #    spacing:
  #      padding: ["1rem", 0, "1rem", 0]
  
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
