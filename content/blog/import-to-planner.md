---
title: "Import To Planner: CSV In, Tasks Out, Nothing Written Until You Say So"
description: "A Blazor app for importing a spreadsheet into Microsoft Planner through Graph — validate, preview, then confirm."
summary: "A Blazor app for importing a spreadsheet into Microsoft Planner through Graph — validate, preview, then confirm."
image: "/images/projects/import-to-planner.png"
date: 2026-04-10
tags:
  - .NET
  - Blazor
  - C#
  - Microsoft 365
  - Microsoft Graph
---

## The spreadsheet is never the plan

I keep running into the same Microsoft 365 job: someone has a CSV (or a spreadsheet that became a CSV), Planner is where the work should live, and Graph will do the write if you let it. Letting it dump a hundred rows in with no preview is how you get a hundred duplicates and a very unhappy plan owner.

**Import To Planner** is a single-purpose Blazor app for that job. Pick a container, pick a plan, upload the file, validate and preview, then confirm. Writes only happen on that last step.

## Why the ceremony

Row-level validation is cheap compared with cleaning up Planner afterwards. Existing tasks can be matched by name so a re-run does not clone the board. If a row fails transiently, it retries once and the report tells you what was created, skipped, or needs a pair of hands.

Self-hosting is a real path, not a footnote. You can point it at your own Entra tenant. Hosted multi-tenant mode exists if you need it; you do not need it to run the software.

## Stack

.NET 10, Microsoft Graph behind an adapter, Microsoft Identity Web for Entra sign-in, MudBlazor for the stepped UI, CsvHelper for the file, Aspire for local orchestration. Domain and Application own the policy. Graph stays in Infrastructure.

## Project details

The technical write-up is here: [Import To Planner](/projects/import-to-planner/). Docs: [docs.importplanner.app](https://docs.importplanner.app).

## Final thoughts

This is M365 development, not a support package. One workflow, done carefully, for a problem that looks simple until you skip the preview.
