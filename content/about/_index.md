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
            url: ../Vincenzo-Coia.pdf
    design:
      # Section background color (CSS class)
      css_class: "bg-gray-100 dark:bg-gray-900"
  
  ## ------- SECTION: bio -------
  - block: hero
    content:
      title: About Me
      text: |-
        I'm a statistician working at the intersection of probability, data, and real-world systems. My work focuses on problems where uncertainty is high, data is imperfect, and the consequences of modeling decisions are significant — particularly in climate and hydrology.

        I'm drawn to a single question that runs through everything I do: what's *possible*, not just what's most likely? That question leads naturally to compound risk, dependence between hazards, and the behavior of extremes — the regimes where standard statistical methods tend to break down.

        For the full record, the CV above has the details.

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
