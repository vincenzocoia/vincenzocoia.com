+++
# Any elements can be added in the body: https://sourcethemes.com/academic/docs/writing-markdown-latex/
# Add more sections by duplicating this file and customizing to your requirements.

widget = "blank"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 12  # Order that this section will appear.

title = "Bio"
subtitle = "(Slides available [here](https://vincenzocoia.com/about_me.pdf))"

[design]
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns = "1"

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  # color = "navy"
  
  # Background gradient.
  # gradient_start = "DeepSkyBlue"
  # gradient_end = "SkyBlue"
  
  # Background image.
  image = ""  # Name of image in `static/img/`.
  image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.

  # Text color (true=light or false=dark).
  text_color_light = false

[design.spacing]
  # Customize the section spacing. Order is top, right, bottom, left.
  padding = ["20px", "0", "20px", "0"]

[advanced]
 # Custom CSS. 
 css_style = ""
 
 # CSS class.
 css_class = ""
+++

My favourite part of statistics for data science is in conveying a prediction's uncertainty. All too often, predictions are conveyed deterministically, as though an omniscient expert is broadcasting an inevitability: national GDP will increase by 5% next year; a river will peak to 0.5 meters below the town's levee in two days. The truth, in reality, is far less certain, and that uncertainty can make the difference when making big decisions such as whether to evacuate a town. My goal, therefore, is to make it easier for all data scientists to establish and communicate uncertainty.

Conveying uncertainty requires the use of probability distributions. This means more than making an elusive Normal assumption, or fitting a test statistic to a t-distribution -- it means building realistic distributions as an output, perhaps even using machine learning, and converting that output into something that's understandable by non-experts. It also means interpreting a deterministic prediction probabilistically, such as by a mean or median. To aid in working with distributions, I'm creating packages for the R Project for Statistical Computing that make it easier to work with distributions. You can find links to these packages on this website.

My main focus these days has been on developing data science initiatives at UBC. I've focussed on developing and delivering the Master of Data Science (MDS) program at UBC for its first four years, and am now developing a new minor program in data science at UBC with my colleagues. I also promote the development of sane analyses by continuing to adapt STAT 545. I like to make my work public, much of which you can find from this website. 

To give everything context, I like to remain aware of the demands placed on data science by staying in touch with organizations and their data science problems. I usually do this through the MDS capstone course, but I also work with various organizations on the side. 