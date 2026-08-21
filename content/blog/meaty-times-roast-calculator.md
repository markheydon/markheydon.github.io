---
title: "MeatyTimes: A Roast Calculator with Far Too Much Engineering"
description: "A cooking site that turns meat, weight, and doneness into oven times, and a serve-at schedule, treated like a real product."
summary: "A cooking site that turns meat, weight, and doneness into oven times, and a serve-at schedule, treated like a real product."
image: "/images/projects/meaty-times.png"
date: 2026-07-02
tags:
  - .NET
  - Aspire
  - Blazor
  - C#
---

## Sunday lunch as a spec

**MeatyTimes** calculates roast times. You pick beef, lamb, pork, chicken, or gammon, a weight, and a doneness where that is appropriate. It gives you oven temperature, cooking time, and rest time. It can also work backwards from a serve-at time so the joint actually lands when you want to eat.

## Why bother?

Two reasons. First, I was tired of hunting the same BBC Food-style table every time I bought a piece of meat. Second, I wanted another small .NET 10 app where the domain logic was obviously in one place and obviously tested. Cooking-critical rules should not live in a button click.

Poultry and pork get food-safe defaults. Doneness is a choice where it makes sense and not where it does not. I would rather the calculator be slightly boring than slightly dangerous.

## What I used

Blazor Server, minimal APIs, .NET Aspire for local orchestration, xUnit v3 and bUnit. The rules sit in `MeatyTimes.Core`. If I change how long a kilo of beef takes, a test should fail before anyone puts the oven on. Quite honestly though, what I've done it total overkill, but I wanted something to test the *recommended* Aspire architecture on. It is a small app, but it is a real app, and I wanted to treat it like one.

## Project details

The technical write-up is here: [MeatyTimes](/projects/meaty-times/). Docs: [meatytimes.markheydon.me.uk](https://meatytimes.markheydon.me.uk).

## Final thoughts

I will not pretend this needed a distributed application. It did not. And probably will get rid of the 'apiserver' container at some point, but for now, it's a thing that I find useful now and then when roasting meat.
