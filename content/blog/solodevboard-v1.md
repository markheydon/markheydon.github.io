---
title: "SoloDevBoard v1.0: One Place for a Fleet of GitHub Repos"
description: "Shipping the Blazor app I built to stop living in a dozen GitHub tabs — audit, labels, triage, and board rules in one UI."
summary: "Shipping the Blazor app I built to stop living in a dozen GitHub tabs — audit, labels, triage, and board rules in one UI."
image: "/images/projects/solo-dev-board.png"
date: 2026-08-17
tags:
  - .NET
  - Aspire
  - Blazor
  - C#
  - GitHub
---

## The operating model came first

I started **SoloDevBoard** in March because I was already trying to keep a fleet of GitHub repositories in decent shape from prompts, labels, and a project board. That operating model lived in [github-workflows](https://github.com/markheydon/github-workflows): a PM pass to scan and curate work, and a daily pass to pick the next item and actually do it.

GitHub still spreads the work around. Issues in one tab, labels in another, project boards somewhere else, workflow runs in yet another. SoloDevBoard is the visual front for that operating system — one Blazor app instead of a dozen tabs.

Today I shipped **v1.0.0**.

## What v1 actually does

- **Audit Dashboard** — issues, open PRs, and workflow health across the repos you select.
- **Label Manager** — create, edit, and enforce a taxonomy in more than one repository at once.
- **Triage UI** — a keyboard-friendly pass through incoming issues and unlabelled PRs.
- **One-Click Migration** — copy labels and milestones from one repo to another.
- **Board Rules Visualiser** — supported states and transitions for GitHub Project v2 boards.
- **Workflow Templates** — browse and apply built-in GitHub Actions templates.

Auth is PAT for trusted local or self-host use, or a GitHub App if you are hosting it for sign-in. Aspire handles local orchestration and the Azure Container Apps deploy.

## AI as a collaborator, with rules

This is the project where I stopped treating AI agents as a novelty and started treating them as collaborators. Planning, issues, implementation, tests, and docs all live in the repository, under human direction, with contracts and CI. That is how the project is actually run, not a slogan on a landing page.

If you only look at one thing I have published this year, look at this.

## Project details

The technical write-up is here: [SoloDevBoard](/projects/solo-dev-board/). Product site: [solodevboard.com](https://solodevboard.com/).

## Final thoughts

v1 is production-ready for the way I use it: a solo developer, several repos, one board. There is more on the roadmap. The point of shipping 1.0 was to stop moving the finish line.
