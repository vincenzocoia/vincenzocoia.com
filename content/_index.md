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
          text: Innovative Probabilistic Modeling for High-Stakes Decisions
          # Upload image to `assets/media/` and reference the filename here
          image: vincenzo-smiley-short.jpg
    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"
  
  ## ------- SECTION: slogan -------
  - block: hero
    content:
      title: About
      text: Vincenzo is a statistical data scientist specializing in innovative probabilistic modelling. He creates solutions in the applied earth sciences at BGC Engineering and develops human-centric software in R. 
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

  ## ------- SECTION: bullets -------
  - block: features
    id: features
    content:
      #title: Approach
      #text: 
      items:
        - name: Statistics
          icon: magnifying-glass
          description: Employ a broad range of methodologies, including probability theory, machine learning, extreme value theory, copula models, and uncertainty analysis to tackle unique challenges.
        - name: Computation
          icon: bolt
          description: Maintain high standards of computational hygiene with defensive programming, version control, and data provenance for well-documented, reproducible codebases.
        - name: Project Management
          icon: sparkles
          description: Tailor model complexity to project needs, starting simple and adding layers only as necessary to achieve optimal solutions.
        - name: Communication
          icon: code-bracket
          description: Engage in two-way transfer of knowledge with domain experts to align models with practical needs and communicate the results meaningfully.
        - name: Software
          icon: code-bracket
          description: Develop designs to facilitate a type of data analysis, implemented as R packages.
        - name: Visualization
          icon: code-bracket
          description: Advanced visualization techniques for visualizing data, with an interactive scope using R Shiny.

  ## ------- SECTION: research vision -------
  - block: collection
    content:
      title: Research Vision
      subtitle: ""
      text: I combine advanced statistical and data science techniques to build large probabilistic models, particularly for extreme events. My work involves creating innovative methodologies to address gaps in the literature and applying these techniques in practical, real-world scenarios. My goal is to collaborate on projects that demand innovation and to bring clarity to complex problems. 
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
      view: article-grid
    id: news
  
  - block: cta-image-paragraph
    id: research
    content:
      items:
        - title: Estimating Extreme Geohazards
          text: This research involves advancing nonstationary flood frequency analysis and other probabilistic models that can adapt to evolving climate patterns. By focusing on mixed-regime hydrological systems, I seek to improve the reliability of flood risk metrics, providing practical guidelines for engineers and decision-makers.
          feature_icon: check
          #features:
          #  - "Multivariate extremes"
          #  - "Risk-informed decision making"
          #  - "Mutliple application areas"
          # Upload image to `assets/media/` and reference the filename here
          image: build-website.png
          #button:
          #  text: Get Started
          #  url: https://hugoblox.com/templates/
        - title: Uncertainty Quantification and Decision-Making under Risk
          text: Managing environmental risks requires decision frameworks that can account for multiple sources of uncertainty. Vincenzo supports risk-informed decision-making, enabling better integration of expert knowledge and data-driven insights. This approach allows stakeholders to make informed choices under uncertain conditions, optimizing resource management and hazard mitigation efforts.
          #feature_icon: bolt
          #features:
          #  - "Dedicated support channel"
          #  - "3,000+ users on Discord"
          #  - "Share your site and get feedback"
          # Upload image to `assets/media/` and reference the filename here
          image: coffee.jpg
          #button:
          #  text: Join Discord
          #  url: https://discord.gg/z8wNYzb
        - title: Applied Statistical Collaboration in Hydrology and Environmental Science
          text: My collaborative work with engineers, hydrologists, and earth scientists bridges statistical theory with practical application. By aligning models with domain-specific needs, I help translate complex data into actionable insights that support resilient water management, climate adaptation, and sustainable resource use. This work often leads to the development of reproducible, defensible codebases that emphasize transparency and reliability.
          #feature_icon: bolt
          #features:
          #  - "Dedicated support channel"
          #  - "3,000+ users on Discord"
          #  - "Share your site and get feedback"
          # Upload image to `assets/media/` and reference the filename here
          image: coffee.jpg
          #button:
          #  text: Join Discord
          #  url: https://discord.gg/z8wNYzb
        - title: Probabilistic Modelling with the Probaverse
          text: Software currently does not provide tools to simplify probabilistic modelling. The probaverse is a suite of tools in R for exploring the full space of possible outcomes in an analysis. It elevates probability distributions as tangible objects that realistically represent your system.
          #feature_icon: bolt
          #features:
          #  - "Dedicated support channel"
          #  - "3,000+ users on Discord"
          #  - "Share your site and get feedback"
          # Upload image to `assets/media/` and reference the filename here
          image: probaverse-small.png
          #button:
          #  text: Join Discord
          #  url: https://discord.gg/z8wNYzb
    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"

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
        - title: Need an innovative solution?
          text: I am always interested in hearing about a need for innovative solutions. Reach out on LinkedIn.
          feature_icon: check
          features:
            - "Multivariate extremes"
            - "Risk-informed decision making"
            - "Mutliple application areas"
          # Upload image to `assets/media/` and reference the filename here
          image: build-website.png
          button:
            text: Get Started
            url: https://hugoblox.com/templates/
        - title: For applications in the applied earth sciences
          text: I work on applications such as hydrology, climate science, and geohazards with BGC Engineering. Reach out to me there. 
          #feature_icon: bolt
          #features:
          #  - "Dedicated support channel"
          #  - "3,000+ users on Discord"
          #  - "Share your site and get feedback"
          # Upload image to `assets/media/` and reference the filename here
          image: coffee.jpg
          button:
            text: Join Discord
            url: https://discord.gg/z8wNYzb
    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"


  - block: hero
    content:
      title: Let's Connect
      text: Vincenzo is keen to get involved in innovative projects, either through BGC Engineering for earth science applications, or through private consulting for all other applications.
      primary_action:
        text: LinkedIn
        url: https://www.linkedin.com/in/vincenzocoia/
        icon: rocket-launch
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
