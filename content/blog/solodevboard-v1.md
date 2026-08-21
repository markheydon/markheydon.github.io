---
title: "SoloDevBoard v1.0: One Place for a Fleet of GitHub Repos"
description: "Shipping the Blazor app I built to stop living in a dozen GitHub tabs, audit, labels, triage, and board rules in one UI."
summary: "Shipping the Blazor app I built to stop living in a dozen GitHub tabs, audit, labels, triage, and board rules in one UI."
image: "/images/projects/solo-dev-board.png"
date: 2026-08-17
tags:
  - .NET
  - Aspire
  - Blazor
  - C#
  - GitHub
---

## Finally got v1 out the door

🎉 Today I shipped **v1.0.0**.

It's been a long time coming in a way this. I started the app as a way to try out GitHub Copilot, specifically, I wanted to let AI just run a muck and do what it wanted, so I built various GitHub Copilot specific bits so it would just go design and build an app (but with me still in the driving seat a little at least). And it was going great, it was almost boring in fact to build the thing I just throw a bunch of slash commands at GitHub Copilot and it would just the work for me.

Two things then happened. First, GitHub Copilot pricing changed dramatically in June 2026 and I just wasn't able to continue building the app in the same way as the cost would have been horrendous. Second, I realised that the app was actually useful and I wanted to use it myself! So I started to take it bit more seriously, converted the workflows to more agent agnostic versions and ditched GitHub Copilot and replaced it with Cursor. And after several late nights getting through the various user stories that had been logged since pretty much day one, I got the thing to a point it was worthy of a release, released it and I'm actually now using the thing myself. *Actually it's more like I'm dog-fooding the thing so I can test it and make sure it works for me before I release it to the world.*

## What v1 actually does

- **Audit Dashboard**: issues, open PRs, and workflow health across the repos you select.
- **Label Manager**: create, edit, and enforce a taxonomy in more than one repository at once.
- **Triage UI**: a keyboard-friendly pass through incoming issues and unlabelled PRs.
- **One-Click Migration**: copy labels and milestones from one repo to another.
- **Board Rules Visualiser**: supported states and transitions for GitHub Project v2 boards.
- **Workflow Templates**: browse and apply built-in GitHub Actions templates.

Auth is PAT for trusted local or self-host use, or a GitHub App if you are hosting it for sign-in. Aspire handles local orchestration and the Azure Container Apps deploy.

## AI as a collaborator, with rules

This is the project where I stopped treating AI agents as a novelty and started treating them as collaborators. Planning, issues, implementation, tests, and docs all live in the repository, under human direction, with contracts and CI. That is how the project is actually run, not a slogan on a landing page.

If you only look at one thing I have published this year, look at this.

## Project details

The technical write-up is here: [SoloDevBoard](/projects/solo-dev-board/). Product site: [solodevboard.com](https://solodevboard.com/).

## Final thoughts

v1 is production-ready for the way I use it: a solo developer, several repos, one board. There is more on the roadmap. The point of shipping 1.0 was to stop moving the finish line. And so I could use the thing myself.
