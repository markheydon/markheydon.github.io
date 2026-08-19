---
title: "MeatyTimes"
date: 2026-07-02
tags: [".NET", "Aspire", "Blazor", "C#"]
summary: "A roast calculator that turns meat type, weight, and doneness into cooking times and a serve-at schedule."
description: "A roast calculator that turns meat type, weight, and doneness into cooking times and a serve-at schedule."
image: "/images/projects/meaty-times.png"
badges:
  - "C#"
  - "Blazor"
  - "Aspire"
links:
  - icon: fas fa-link
    url: https://meatytimes.markheydon.me.uk
  - icon: fab fa-github
    url: https://github.com/markheydon/meaty-times
---

## Overview

**MeatyTimes** is a small cooking assistant for roasting joints of meat. You pick a type (beef, lamb, pork, chicken, or gammon), a weight, and a doneness where it applies. It returns oven temperature, cooking time, and rest time — and it can work backwards from a serve-at time so the roast actually fits around a meal.

It is a weekend-shaped product with weekday-shaped engineering: domain rules live in a dedicated core project, cooking-critical behaviour is unit-tested, and the UI is a MudBlazor Blazor app orchestrated with .NET Aspire. The cooking rules themselves are documented JSON, not magic numbers buried in a button click.

Not everything I publish has to be Microsoft 365. Sometimes you just want Sunday lunch to come out on time.

## Technologies Used

- **.NET 10** — ASP.NET Core minimal APIs plus Blazor Server.
- **MudBlazor** — responsive UI for phone, tablet, and desktop.
- **.NET Aspire** — local orchestration of the API, UI, and service defaults.
- **xUnit v3 + bUnit** — domain calculation tests and component tests.
- **OpenTelemetry** — health checks and telemetry via shared service defaults.

## Key Features

- **Roast calculator** — beef, lamb, pork, chicken, and gammon.
- **Doneness handling** — where it is appropriate, with food-safe defaults for poultry and pork.
- **Serve-at scheduling** — work backwards from when you want to eat.
- **Auditable rules** — cooking logic lives in `MeatyTimes.Core` with documented sources.

## Docs

👉 [meatytimes.markheydon.me.uk](https://meatytimes.markheydon.me.uk)

## Repository

👉 [GitHub Repo](https://github.com/markheydon/meaty-times)

---

A deliberately small product, treated like a real one: tests on the sums, a proper UI, and docs for people who just want to know when to put the oven on.
