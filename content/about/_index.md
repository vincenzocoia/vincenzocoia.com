---
title: 'About'
date: 2023-10-24
type: landing

design:
  # Default section spacing
  spacing: "6rem"

sections:
  ## ------- SECTION: my picture -------
  - block: cta-image-paragraph
    id: intro
    content:
      items:
        - title: Vincenzo Coia, Ph.D., P.Stat.
          text: Statistician, combining research and practice for probabilistic and risk modelling in the earth sciences.
          # Upload image to `assets/media/` and reference the filename here
          image: vincenzo-smiley-short.jpg
          button:
            text: View CV
            url: Vincenzo-Coia-public.pdf
    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"
  
  ## ------- SECTION: bio -------
  - block: hero
    content:
      title: About Me
      text: I am a statistician and data scientist specializing in practical and innovative probabilistic modeling. With a background spanning statistics, data science, and earth sciences, I'm dedicated to bridging the gap between theoretical statistical methods and practical solutions for complex environmental challenges.

  ## ------- SECTION: Innovation Vision -------
  - block: collection
    content:
      title: Innovation & Forward Thinking
      subtitle: ""
      text: |-
        My work focuses on expanding how we answer the question, "What's possible?"—not just "What's most likely?" I draw on the strengths of both classical statistics and machine learning, building probabilistic models of complex, interdependent systems. My work often centers on understanding extremes in climate and hydrology, where I bridge theoretical innovation with practical application.
        
        The following are initiatives I'm leading.
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
      view: card
    id: research

  ## ------- SECTION: Personal Approach -------
  - block: features
    id: approach
    content:
      title: My Approach
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

  ## ------- SECTION: Publications -------
  - block: collection
    content:
      title: Scholarly Publications
      text: "Articles in scientific journals, proceedings, and preprints."
      filters:
        folders:
          - publication
    design:
      view: citation

  ## ------- SECTION: Experience -------
  - block: resume-experience
    content:
      username: admin
    design:
      date_format: January 2006
      is_education_first: false

  ## ------ SECTION: Connect ------
  - block: cta-image-paragraph
    id: connect
    content:
      items:
        - title: Let's Connect
          text: I'm always interested in connecting with professionals working in statistics, earth sciences, and related fields. Feel free to reach out if you have questions about my approach or want to discuss potential collaborations.
          feature_icon: envelope
          image: vincenzo-smiley-headshot.jpg
          button:
            text: Email Me
            url: mailto:vincenzo.coia@gmail.com
---
