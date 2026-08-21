---
title: "SoloDevBoard"
date: 2026-08-17
tags: [".NET", "Aspire", "Blazor", "C#", "GitHub"]
summary: "A single pane of glass for solo developers managing GitHub work across many repositories."
description: "A single pane of glass for solo developers managing GitHub work across many repositories."
image: "/images/projects/solo-dev-board.png"
badges:
  - "C#"
  - "Blazor"
  - "Aspire"
links:
  - icon: fas fa-link
    url: https://solodevboard.com/
  - icon: fab fa-github
    url: https://github.com/markheydon/solo-dev-board
---

## Overview

**SoloDevBoard** is an open-source .NET 10 Blazor Server app I built for a very specific itch: keeping several GitHub repositories in decent shape without living in a dozen browser tabs.

It grew out of the AI-driven project-management workflow I had already been running from [github-workflows](https://github.com/markheydon/github-workflows). That repo was the operating model. SoloDevBoard is the visual front for it. Version **1.0.0** shipped in August 2026.

If like me you maintain more than one repo, GitHub spreads the work around, issues here, labels there, project boards somewhere else, workflow runs in yet another place. SoloDevBoard pulls that into one interface: audit open work, synchronise labels, triage incoming issues, and see how a Project v2 board actually behaves. There are plenty of 'team' tools around that help you manage multiple repos in a similar way, but SoloDevBoard is designed for a single developer. And I won't lie, it's pretty opinionated in places as I designed the app mainly for how I work.

It was also a deliberate experiment in allowing AI to completely control the product management, project management, and development of an app. Including agents as collaborators, planning, issues, implementation, tests, and docs all live in the repository, under human direction. I started it when GitHub Copilot was still cheap to use and once the infamous June 2026 price hike hit, I switched to Cursor. The app is still in active development at time of writing, and I expect it to be a useful tool for solo developers for some time to come.

## Technologies Used

- **.NET 10 / C#**: Blazor Server UI with a Clean Architecture split (Domain, Application, Infrastructure).
- **MudBlazor**: component library for the dashboard, triage, and label tools.
- **.NET Aspire**: local orchestration and production deploy to Azure Container Apps.
- **GitHub API / GitHub Apps**: repository, issue, label, project, and workflow data.
- **Playwright and xUnit**: end-to-end and unit coverage around the PM and triage flows.
- **Hugo / Hextra**: public product site at [solodevboard.com](https://solodevboard.com/).

## Key Features

- **Audit Dashboard**: issues, open PRs, and workflow health across selected repositories.
- **Label Manager**: create, edit, and enforce a label taxonomy in more than one repo at once.
- **Triage UI**: keyboard-friendly pass through incoming issues (and unlabelled PRs).
- **One-Click Migration**: copy labels and milestones from one repository to another.
- **Board Rules Visualiser**: supported states and transitions for GitHub Project v2 boards.
- **Workflow Templates**: browse and apply built-in GitHub Actions templates.
- **Two auth modes**: PAT for trusted local/self-host use, GitHub App for hosted sign-in.

## Live Site

👉 [solodevboard.com](https://solodevboard.com/)

## Repository

👉 [GitHub Repo](https://github.com/markheydon/solo-dev-board)

---

This is the project that ate most of 2026, in the best sense. It is the closest thing I have to a public statement of how I actually run a fleet of repositories as a solo developer.
