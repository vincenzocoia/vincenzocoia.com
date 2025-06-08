---
title: 'Home'
date: 2023-10-24
type: landing

design:
  # Default section spacing
  spacing: "6rem"

sections:
  ## ------- SECTION: HERO -------
  - block: hero
    id: hero
    content:
      title: "Modeling compound climate risks"
      text: "Helping clients build interpretable risk models for extremes and uncertainty"
      primary_action:
        text: Work With Me
        url: "#contact"
        icon: user-group
      secondary_action:
        text: See My Work
        url: "#projects"
    design:
      spacing:
        padding: ["5rem", 0, "5rem", 0]
      # For full-screen, add `min-h-screen` below
      css_class: "dark min-h-screen"
      background:
        color: "navy"
        image:
          # Add your mountain or hazard map image to `assets/media/`
          # For now using a placeholder - you'll need to add appropriate image
          filename: network_cloud.jpeg
          filters:
            brightness: 0.5
          parallax: true
          position: center
          size: cover

  ## ------- SECTION: WHAT I DO -------
  - block: features
    id: what-i-do
    content:
      title: What I Do
      items:
        - name: Custom Risk Models
          icon: chart-bar
          description: I build custom models of complex stochastic systems, capturing meaningful structure and rare events for grounded decision making.
          css_class: bg-blue-100
        - name: Integrate with a team
          icon: user-plus
          description: Join your team as a statistical data science collaborator — contributing review, model development, and documented workflows your team can trust, reuse, and extend.
          css_class: bg-green-100
        - name: Insightful Reporting
          icon: puzzle-piece
          description: Even complex models can be clearly explained. I focus on conveying the essential ideas simply, delivering reports that are clear, practical, and backed by detail when needed.
          css_class: bg-red-100

  ## ------- SECTION: FEATURE PROJECT / TOOL HIGHLIGHT -------
  - block: cta-image-paragraph
    id: probaverse
    content:
      items:
        - title: "Probaverse: Next-Gen Probability Modeling"
          text: A modern, flexible toolkit for real-world distribution modeling.
          # Upload image to `assets/media/` and reference the filename here
          image: probaverse_arrangement.png
          button:
            text: Learn How It Works
            url: "/probaverse"
    design:
      # Alternate the side that the image appears on
      flip_alt: true
      css_class: "bg-white dark:bg-gray-950"

  ## ------- SECTION: WHO I WORK WITH -------
  - block: features
    id: clients
    content:
      title: Who I Work With
      text: "This is for anyone who needs to build trustworthy models of rare, high-impact events with limited data."
      items:
        - name: Mining Operators
          icon: chart-bar
          description: Helping mining companies assess and mitigate environmental risks through statistical modeling of rare events.
        - name: Engineering Consultancies
          icon: building-office
          description: Providing specialized statistical expertise to complement engineering knowledge for comprehensive risk assessments.
        - name: Researchers & Risk Modelers
          icon: academic
          description: Collaborating with academic and industry researchers to develop and implement advanced modeling techniques.
        - name: Environmental Teams
          icon: globe-alt
          description: Supporting environmental professionals with tools to understand and quantify climate-related risks and uncertainties.



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
    id: projects

  ## ------ SECTION: CONTACT / WORK WITH ME ------
  - block: cta-image-paragraph
    id: contact
    content:
      items:
        - title: Have a question, a project idea, or want a proposal?
          text: I'm curious about projects that push boundaries and could benefit from a fresh, statistically-driven approach. If that sounds like what you have in mind, I encourage you to connect with me.
          feature_icon: envelope
          # Upload image to `assets/media/` and reference the filename here
          image: network_city.jpeg
          button:
            text: Work With Me
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
