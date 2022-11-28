---
title: "Calculating marginal improvement in the 1% Rule"
# subtitle: "A post about..."
# description: "A post about..."
author: "Je Sian Keith Herman"
date: 2022-11-10T00:00:00+08:00
lastmod: 2022-11-10T00:00:00+08:00
featuredImage: 
# lightgallery: true
toc:
    enable: true
    # keepStatic: true
    auto: true
categories: ["Code", "TIL"]
tags: ["books", "math"]
---

I got curious as to how the 37% improvement in James Clear's book "Atomic Habits" was calculated. As such, I went about figuring out how and tried to generalize it to different time periods (rather than just a year) and with variable improvement and regression rates for each day.

## Improvement at a fixed percentage

This calculation is made on the assumption that there is a compounding involved, that the improvement is consistent every day without gaps, and no regression happens during that time. With $\Delta p$ as the improvement in percent and $P(t)$ as the cumulative improvement over time, we arrive at the following:

$$\begin{aligned}
\left( 1 + \Delta p \right)^t &= P(t) \\
\left( 1 + 0.01 \right)^{365} &= 37.7834
\end{aligned}$$

Here is where we get the 37% cumulative improvement in the 1% Rule.

## Improvement and Regression at a fixed percentage

Now, what if we have regression on some days? As such a much more general equation where regression can be expected is as follows:

$$P(t) = \left( 1 + \Delta p + \Delta r \right)^{t}$$

where

- $P(t)$ is still the cumulative improvement over time
- $\Delta p$ is the improvement increment for a day in percent: $\Delta p \in (0,1)$
- $\Delta r$ is the regression decrement for a day in percent: $\Delta r \in (-1,0)$
- $t$ as the total period (in days) of which the cumulative improvement is being tracked

## Improvement and Regression at a variable percentage

This equation, however, only applies to improvement and regression increments that are constant. Now what if I do not consistently improve at 1% but have days where I improve 2%, 3%, or 0.25%? Or days where things did not go well and I regress by 0.5%, 1%, or 5%?

To convert it to discrete variable improvement and regression percentages per day we have the following (which we can further take its limits to arrive at a product integral):

$$P(t) = \prod_{i=1}^{t} \left( 1 + \Delta p_i + \Delta r_i \right)$$

## Calculating $P(t)$ with Python

Given some data (maybe a CSV file with date, $\Delta p$, and $\Delta r$ fields for each date in a given time period), we can code up a quick calculation for $P(t)$. For example in `python`:

```python
dp = [0.011, 0.020, 0.015, 0.01]
dr = [0.009, 0.001, 0.005, 0.05]
Pt = 1

for i in dp:
 Pt = Pt * (1 + dp[i] + dr[i])

print(f"The cumulative performance for " +
      f"{len(dp)} days is {Pt:.2f}x.")
```
