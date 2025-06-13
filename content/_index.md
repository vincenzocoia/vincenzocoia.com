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
      title: "Probabilistic Insights for a Changing World"
      text: "Specialized probabilistic modeling for complex systems, informing critical decisions for environmental and operational risk."
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

  ## ------- SECTION: HOW WE CAN PARTNER -------
  - block: features
    id: how-we-partner
    content:
      title: How We Can Partner
      text: "I offer flexible engagement models to best suit your project needs, from targeted advice to integrated project support. Here are common ways I collaborate:"
      items:
        - name: Targeted Advice & Expert Review
          icon: lightbulb
          description: "Need a second opinion, specialized statistical guidance on a complex problem, or a rigorous review of an existing model? Engage me for short, focused consultations by the hour or project."
        - name: Project-Based Model Development
          icon: tools
          description: "For defined projects requiring custom probabilistic model development, deep data analysis, or in-depth risk assessments, we can scope a clear deliverable-based agreement."
        - name: Integrated Team Augmentation
          icon: users
          description: "I can join your existing technical team as a specialized statistical data science collaborator, providing ongoing support, enhancing workflows, and building internal capabilities."
    design:
      spacing:
        padding: ["4rem", 0, "4rem", 0]

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

  ## ------- SECTION: WHO I COLLABORATE WITH -------
  - block: features
    id: collaborators
    content:
      title: Who I Collaborate With
      text: "My focus is on providing flexible support to:"
      items:
        - name: Consulting & Engineering Firms
          icon: building-office
          description: "Firms seeking advanced statistical validation, extreme event analysis, or custom risk models to enhance their project deliverables for clients in mining, infrastructure, and water management."
        - name: Corporate Data Science & R&D Teams
          icon: chart-line
          description: "Internal teams developing new methodologies for risk assessment, climate adaptation, or resource management who require deep statistical insight for complex data."
        - name: Entities Requiring Expert Validation
          icon: search
          description: "Any organization needing independent peer review of their existing risk models, statistical analyses, or environmental assessments for scientific soundness and defensibility."


  ## ------ SECTION: CONTACT / WORK WITH ME ------
  - block: cta-image-paragraph
    id: contact
    content:
      items:
        - title: Let's Discuss Your Project.
          text: "If your project demands advanced statistical insight for environmental or operational risk, I'm keen to hear about it. Reach out, and let's discuss how I can help."
          feature_icon: envelope
          # Upload image to `assets/media/` and reference the filename here
          image: network_city.jpeg
          button:
            text: Work With Me
            url: mailto:vincenzo.coia@gmail.com

---
