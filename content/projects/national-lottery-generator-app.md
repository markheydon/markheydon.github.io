---
title: "National Lottery Generator App"
date: 2026-08-06
tags: ["Docker", "PHP"]
summary: "A personal project that generates UK lottery numbers for fun, now a small vanilla PHP app, no Laravel required."
description: "A personal project that generates UK lottery numbers for fun, now a small vanilla PHP app, no Laravel required."
image: "/images/projects/national-lottery-generator-app.png"
badges:
  - "PHP"
  - "PHPUnit"
  - "Playwright"
links:
  - icon: fas fa-link
    url: https://lottery.markheydon.me.uk/
  - icon: fab fa-github
    url: https://github.com/markheydon/national-lottery-generator
---

## Overview

**National Lottery Generator** is a personal project that suggests UK lottery numbers for entertainment. It started years ago as an excuse to try Laravel. In August 2026 I stripped that away and rebuilt it as a small vanilla PHP 8.3–8.5 app: file-based CSV caching, plain PHP templates, and a PHP built-in server for local work. If I was still doing lots in PHP, I would without doubt have gone down the Laravel route. However, I am not, and the Laravel version was a bit of a maintenance burden for what is ultimately a small hobby project. The new version is easier to keep alive, and it has tests that actually run in CI. *I was basically having to deal with Dependabot PRs and security alerts for a project that is not even a business, and that was a bit of a drag.*

The generator still does not predict anything. It looks at historical draws, applies a half-arsed bit of logic, and prints some lines. What changed is the cost of keeping it alive, fewer dependencies, no database, tests that actually run in CI.

## Technologies Used

- **PHP 8.3–8.5**: application code with no framework.
- **Composer**: autoloading and a small set of dev tools (PHPUnit, Pint, PHPMD).
- **PHPUnit**: unit and feature tests, including Set For Life coverage.
- **Playwright**: UI tests in their own GitHub Actions workflow.
- **Azure App Service**: production hosting with `public/` as the web root.

## Key Features

- **Lottery modes**: UK Lotto, EuroMillions, Thunderball, Set For Life, Lotto Hotpicks, and EuroMillions Hotpicks.
- **Historical draw cache**: CSV snapshots on the local filesystem, no database.
- **Simple UI**: pick a game, generate lines, switch games from the menu.
- **Entertainment only**: past results do not predict future draws.

## Live Site

👉 [Lottery Generator App](https://mheydon73-lottery-generator.azurewebsites.net/) *As it's on the free App Service plan, first load can take a good few seconds.*

👉 [Lottery Generator Docs](https://lottery.markheydon.me.uk/)

## Repository

👉 [GitHub Repo](https://github.com/markheydon/national-lottery-generator)

---

A hobby app that finally matches its size: PHP, files, tests, and a live site. The Laravel version taught me a framework. The current one is easier to keep.
