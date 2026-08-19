---
title: "MeatyTimes: A Roast Calculator with Far Too Much Engineering"
description: "A cooking site that turns meat, weight, and doneness into oven times — and a serve-at schedule — treated like a real product."
summary: "A cooking site that turns meat, weight, and doneness into oven times — and a serve-at schedule — treated like a real product."
image: "/images/projects/meaty-times.png"
date: 2026-07-02
tags:
  - .NET
  - Aspire
  - Blazor
  - C#
---

## Sunday lunch as a spec

Not everything I publish has to earn its keep. **MeatyTimes** calculates roast times. You pick beef, lamb, pork, chicken, or gammon, a weight, and a doneness where that is appropriate. It gives you oven temperature, cooking time, and rest time. It can also work backwards from a serve-at time so the joint actually lands when you want to eat.

That is the whole product. I then put it in Aspire, wrote unit tests for the sums, documented the cooking rules as JSON, and gave it a MudBlazor UI. Ridiculous ceremony for a roast. Also exactly how I wanted to spend that week.

## Why bother?

Two reasons. First, I was tired of hunting the same BBC Food-style table every time I bought a piece of meat. Second, I wanted another small .NET 10 app where the domain logic was obviously in one place and obviously tested. Cooking-critical rules should not live in a button click.

Poultry and pork get food-safe defaults. Doneness is a choice where it makes sense and not where it does not. I would rather the calculator be slightly boring than slightly dangerous.

## What I used

Blazor Server, minimal APIs, .NET Aspire for local orchestration, xUnit v3 and bUnit. The rules sit in `MeatyTimes.Core`. If I change how long a kilo of beef takes, a test should fail before anyone puts the oven on.

## Project details

The technical write-up is here: [MeatyTimes](/projects/meaty-times/). Docs: [meatytimes.markheydon.me.uk](https://meatytimes.markheydon.me.uk).

## Final thoughts

I will not pretend this needed a distributed application. It did not. It needed an answer I trusted, and a repo I could keep in the same shape as the things I take more seriously. The roast still has to come out on time.
