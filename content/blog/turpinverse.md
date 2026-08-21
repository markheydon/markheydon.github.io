---
title: "Turpinverse: Dick Turpin as CRM Demo Data"
description: "A tongue-in-cheek open-source universe, personas, organisations, and a CSV export app, for when sample data is too beige."
summary: "A tongue-in-cheek open-source universe, personas, organisations, and a CSV export app, for when sample data is too beige."
image: "/images/projects/turpinverse.png"
date: 2026-07-19
tags:
  - .NET
  - C#
---

## Sample data is usually dreadful

I often find myself wanting to mock-up data for something or other, like a CRM demo or some screenshots of some app or other than doesn't have actual real-life data in there. And me being me, didn't just want some random names being generated, I wanted an actual thing that *could* be true with real structure behind it while still keeping a bit of my dry humour as well.

[Turpinverse](https://turpinverse.uk) reframes the Dick Turpin legend as a tongue-in-cheek business universe. Canonical characters, organisations, timeline events, and alias maps, grounded in the historical record where that exists, and clearly marked as fiction where it does not.

## What shipped

- A **canon dataset**: fifteen-plus personas, eight-plus organisations, timeline events, alias maps.
- A **Hugo site** at [turpinverse.uk](https://turpinverse.uk) for the universe docs.
- A **Blazor Server** app that exports contacts, accounts, deals, and cases as CSV, with the cross-references left intact.

It's still very much a work in progress for me this, but the export API does work but would need some work no doubt to get into a format for actual use.

## Stack

.NET 10, Aspire, Hugo, a bit of Tailwind on the Blazor side, CsvHelper for the files. Tests include canon validation so the dataset cannot quietly disagree with itself.

## Repository

👉 [github.com/markheydon/turpinverse](https://github.com/markheydon/turpinverse)

## Final thoughts

It is not finished in the way a product with a version number is finished. It is far enough along to be useful, and far more interesting to click through than yet another Contoso. Certainly one that I will get round to enhancing at some point, but for now it is a fun little project that I hope others will find useful too.
