---
date: "2022-10-24"
design:
  spacing: 6rem
sections:

- block: resume-biography
  content:
    button:
      text: Download CV
      url: uploads/resume.pdf
    text: ""
    username: admin
  design:
    background:
      color: white
      image:
        filename: abstract_plants.jpg
        filters:
          brightness: 1
        parallax: true
        position: bottom
        size: cover
    css_class: light

- block: markdown
  content:
    subtitle: ""
    text: |-
      I combine advanced statistical and data science techniques to build large probabilistic models, particularly for extreme events. My work involves creating innovative methodologies to address gaps in the literature and applying these techniques in practical, real-world scenarios. My goal is to collaborate on projects that demand innovation and to bring clarity to complex problems.   
      - Employ a broad range of methodologies, including probability theory, machine learning, extreme value theory, copula models, and uncertainty analysis to tackle unique challenges.   
      - Maintain high standards of computational hygiene with defensive programming, version control, and data provenance for well-documented, reproducible codebases.   
      - Tailor model complexity to project needs, starting simple and adding layers only as necessary to achieve optimal solutions.   
      - Engage in two-way transfer of knowledge with domain experts to align models with practical needs and communicate the results meaningfully.
      <span class="fa-solid fa-user"></span>
      <i class="fa-solid fa-barcode"></i>

      <div style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px; max-width: 800px; margin: auto; padding: 20px;">
        <div style="text-align: center; padding: 20px; border: 1px solid #ddd; border-radius: 8px;">
            <img src="star.png" alt="Icon 1" style="width: 40px; height: 40px; margin-bottom: 10px;">
            <div style="font-size: 16px;">Combine advanced statistical and data science techniques to build large probabilistic models, particularly for extreme events.</div>
        </div>
        <div style="text-align: center; padding: 20px; border: 1px solid #ddd; border-radius: 8px;">
            <img src="star.png" alt="Icon 2" style="width: 40px; height: 40px; margin-bottom: 10px;">
            <div style="font-size: 16px;">Maintain high standards of computational hygiene with defensive programming, version control, and data provenance for well-documented, reproducible codebases.</div>
        </div>
        <div style="text-align: center; padding: 20px; border: 1px solid #ddd; border-radius: 8px;">
            <img src="star.png" alt="Icon 3" style="width: 40px; height: 40px; margin-bottom: 10px;">
            <div style="font-size: 16px;">Engage with domain experts to align models with practical needs and demonstrate meticulous attention to detail in all technical work.</div>
        </div>
        <div style="text-align: center; padding: 20px; border: 1px solid #ddd; border-radius: 8px;">
            <img src="star.png" alt="Icon 4" style="width: 40px; height: 40px; margin-bottom: 10px;">
            <div style="font-size: 16px;">Tailor model complexity to project needs, starting simple and adding layers only as necessary to achieve optimal solutions.</div>
        </div>
      </div>

    title: "Approach"
  design:
    columns: "1"

- block: collection
  content:
    count: 6
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
    title: Featured Work
  design:
    spacing:
      padding:
      - 0
      - 0
      - 0
      - 0
    view: article-grid
  id: news

- block: collection
  content:
    filters:
      featured_only: true
      folders:
      - publication
    title: Featured Publications
  design:
    #columns: 2
    view: citation #article-grid
  id: papers

- block: collection
  content:
    count: 5
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
    text: ""
    title: Tutorials
  design:
    spacing:
      padding:
      - 0
      - 0
      - 0
      - 0
    view: date-title-summary
  id: news

- block: resume-experience
  content:
    username: admin
  design:
    date_format: January 2006
    is_education_first: false

title: ""
type: landing
---
