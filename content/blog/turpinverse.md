---
title: "Turpinverse: Dick Turpin as CRM Demo Data"
description: "A tongue-in-cheek open-source universe — personas, organisations, and a CSV export app — for when sample data is too beige."
summary: "A tongue-in-cheek open-source universe — personas, organisations, and a CSV export app — for when sample data is too beige."
image: "/images/projects/turpinverse.png"
date: 2026-07-19
tags:
  - Personal Projects
  - .NET
---

## Sample data is usually dreadful

Every CRM demo I have ever sat through uses the same fictional company with the same fictional contacts. Beige names, beige deals, beige everything. I wanted a dataset with a bit of life in it, and I wanted it to be reusable.

[Turpinverse](https://turpinverse.uk) reframes the Dick Turpin legend as a tongue-in-cheek business universe. Canonical characters, organisations, timeline events, and alias maps — grounded in the historical record where that exists, and clearly marked as fiction where it does not.

## What shipped

- A **canon dataset**: fifteen-plus personas, eight-plus organisations, timeline events, alias maps.
- A **Hugo site** at [turpinverse.uk](https://turpinverse.uk) for the universe docs.
- A **Blazor Server** app that exports contacts, accounts, deals, and cases as CSV, with the cross-references left intact.

The export API is for local demos. It is off in production on purpose. Do not put it on a public network without thinking about that.

## Stack

.NET 10, Aspire, Hugo, a bit of Tailwind on the Blazor side, CsvHelper for the files. Tests include canon validation so the dataset cannot quietly disagree with itself.

## Repository

👉 [github.com/markheydon/turpinverse](https://github.com/markheydon/turpinverse)

## Final thoughts

It is not finished in the way a product with a version number is finished. It is far enough along to be useful, and far more interesting to click through than yet another Contoso. Sometimes the point of a weekend project is that the demo data makes you smile.
