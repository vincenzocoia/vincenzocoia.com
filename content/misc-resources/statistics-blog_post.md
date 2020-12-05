# Our Curriculum, Part II

This post is a continuation of [our post from last summer](https://ubc-mds.github.io/2018-06-04-curriculum-CS-ML/) on the role of computer science in the Master of Data Science (MDS) curriculum here at UBC-Vancouver. This time, we're focussing on the role of Statistics in the program.


We see two main challenges in teaching Statistics in our program:

1. Turning established statistical framework into a lens for data science.
2. Fitting this into a 10-month program amongst other data science topics.

## 1\. Statistics does not directly translate to data science

Statistical science: to us, is the science of numerically describing uncertainty. But the things one talks about when discussing statistics depends on the end in mind. 

Typically and traditionally, the end involves establishing properties of a statistical method. For example, finding the asymptotic distributions of GLM estimates, or describing the usefulness of Pearson's correlation in measuring dependence. These are _method-first_ approaches, where we begin with a model (such as a GLM or two random variables with dependence), and explore its properties. A course in statistics that's grouped by method tends to be indicative of a method-first approach: a lecture on the GLM
starts by defining the GLM, then moves on to its properties and a description of how to implement it; a lecture on maximum likelihood estimation defines the likelihood function, the loss function, and the estimator's asymptotic distribution.

The end for statistics for data science is a solution to a real-world problem, making this a _problem-first_ approach to statistics. The method-first approach does not easily translate here. For example, how do we know when to use a GLM for a given problem? Sure, the method-first approach tells us what the data should look like before using a GLM, but the converse is not necessarily true: having data that looks like it fits a GLM does not mean that you should fit a GLM. A random forest might be better for your problem. Or, maybe it's better to drop the Poisson assumption (yep, you can do that). 

## 2.\ Statistics for Data Science

To make a course in statistics with a problem-first approach, lectures should be grouped by (you guessed it) problem. As an example, our Regression II course has topics such as:

- Regression when the range of your response is restricted
- Regression when your data are censored
- Regression when some data are missing

In each scenario, we look at the pros and cons of approaches for two encompassing problem types: optimizing prediction, and gaining interpretation. We focus on pros and cons of making assumptions in two areas: the model function and the conditional distributions. For example, when the range of the response is restricted to being positive, we look at the value of a linear predictor with both the identity and log link functions, and the value of adding a Poisson assumption to the conditional distributions, to arrive at a GLM as one possible solution. 

In our experience, statistics discussed from a problem-first approach is hard to come by, so we see this as an area deserving active research. Even applied statistics tends to take a method-first approach, the difference being a stronger focus on how to draw conclusions from a method on various problems. Or, sometimes applied statistics does start with a real problem, but then the bulk of the attention is spent developing a method, then describing its properties.  

## How to make a problem-first course

We've found the following to be useful:

- Begin with a statistical method.
- Distill this down to a problem type by asking why one would want to use this method.
- Ask: What are the assumptions of the approach? Are they really "needed"?

## Trimming

To fit the concepts into a 10-month program, we use the principle that the tidyverse adopts, and that's to establish a simple foundation that covers "most" situations. Sometimes, this means not discussing how a model is estimated (such as the proportional hazards model), but perhaps just giving a brief general idea in words.


Stat is still important before problem-first approach. 

--------

## Authors:
[Vincenzo Coia](https://vincenzocoia.com/) is a lecturer with the MDS Vancouver program in the UBC Department of Statistics.

## Acknowlegdements