---
title: "About The Basic Monte Carlo Simulator"
author: 
date: 
output: html_document
---
# ABOUT


The whole point of this App is to illustrate visually that  regardless of the inputs, the distribution (as displayed) in the output is eventually "normally distributed" or (bell-shaped) as the number or simulations (observations) increases.  This is known as the "Central Limit Theorem".  Learn more: https://www.khanacademy.org/math/probability/statistics-inferential/sampling_distribution/v/central-limit-theorem

How Is This Useful?

- Great for basic educational Visualization of the normal 
distribution in statistics & finance: 
http://www.mathsisfun.com/data/standard-normal-distribution.html
- Instant visual feedback: The Graph dynamically changes as the inputs change
- Quick & Easy to use:  Just move the slider(s)! 

Why A Simple Monte Carlo Simulator and The Normal Distribution?

The Normal distribution can be ueful in constructing Monte Carlo simulation.  In finance, it is commonly found in applications such as calculating the Value at Risk (VaR) of a portfolio, and in pricing financial options, and also for  estimating the liabilities in variable annuity contracts.

- Monte Carlo methods in finance: http://en.wikipedia.org/wiki/Monte_Carlo_methods_in_finance
- The main inspiration for this project: http://www.r-bloggers.com/quantitative-finance-applications-in-r-5-an-introduction-to-monte-carlo-simulation/
- More info on The Monte Carlo Method: http://en.wikipedia.org/wiki/Monte_Carlo_method


An Example Of How The Display Is Produced:

```{r}
n <- 1000            # 1000 observations
z <- rnorm(n)        # mean = 0 and sd = 1 are defaults
mu <- 0.10           # in finance-this is the expected return
sd <- 0.15           # expected volatility
delta_t <- (1/252)   # daily returns annualized (252 trading days in 1yr)
Returns <- mu*delta_t + sd*z*sqrt(delta_t)
```
