---
title: "A Tale of Two Tributaries: Floodplain mapping in the Nicola Valley with Copulas"
summary: Modelling the design flood in the Nicola Valley when multiple mixed-regime watersheds are involved.  
#tags:
date: "2023-06-27T00:00:00Z"

# Optional external URL for project (replaces project detail page).
# external_link: https://www.fraserbasin.bc.ca/_Library/TR_Flood/tr_frequency-magnitude-coldwater_draft_may_2022_web.pdf

image:
  caption: .
  focal_point: Smart
---

The Coldwater River and Spius Creek are two tributaries of the Nicola River in British Columbia, Canada, an area identified by the provincial government for floodplain mapping. My role in this project was to identify the 200-year floodplain hazard map, and that involved overcoming two main statistical challenges.

The first challenge was that it's unrealistic to model a 200-year flood occurring in both tributaries at the same time because they are unlikely to flood to the same extent simultaneously. The solution here was to model a 200-year flood in the Coldwater River, and calculate a realistic corresponding flow (such as the median or mode) in Spius Creek from its conditional distribution -- and vice versa. 

The second challenge was that floods in both watersheds are the result of two very different patterns: flooding due to snowmelt in the spring, and rainfall in the fall/winter. In other words, the watersheds have mixed regimes. To capture these distinct behaviours, I built a copula-based dependence model for each type of peak, and combined them to obtain the conditional distribution of corresponding flows that we were after.

A copula is a joint distribution between variables expressed in terms of return period, as depicted in the figure below for the snowmelt and rainfall-related copulas (isolines represent the probability density function). Relating flows in terms of their return periods restricts the amount of possible relationships since the data must have a fixed spacing on the x and y axes, and this also means that there's likely a pre-defined copula model like Gumbel or Frank that closely approximates the data (just like there are distributions that explain one variable, like the Normal, Exponential, or Poisson).

![](copulas.png)

