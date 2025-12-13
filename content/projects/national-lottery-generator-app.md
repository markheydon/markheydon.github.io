---
title: "National Lottery Generator App"
date: 2023-05-06
tags: ["Laravel", "PHP", "Docker"]
summary: "A personal project that generates UK lottery numbers for fun, built with Laravel."
description: "A personal project that generates UK lottery numbers for fun, built with Laravel."
image: "/images/projects/national-lottery-generator-app.png"
badges:
  - "PHP"
  - "Laravel"
  - "Docker"
links:
  - icon: fas fa-link
    url: https://mheydon73-lottery-generator.azurewebsites.net
  - icon: fab fa-github
    url: https://github.com/markheydon/national-lottery-generator
---

## Overview

**National Lottery Generator** is a personal project designed to generate UK lottery numbers for entertainment purposes. Originally built as a Laravel app, it’s now being modernized to remove unnecessary dependencies, simplify caching, and adopt containerized local development for easier maintenance.

## Technologies Used

- **Laravel** — PHP framework for clean routing and service organization.
- **PHP** — core language powering the app logic.
- **Docker / Laravel Sail** — reproducible local development environment.
- **Composer** — dependency management for PHP packages.
- **Blade Templates** — lightweight UI rendering.

## Key Features

- **Lottery modes** — supports UK Lotto, EuroMillions, and Thunderball.
- **Configurable generation** — unique number sets, optional bonus draws.
- **Seedable randomness** — deterministic outputs for testing.
- **Caching without DB** — uses Laravel’s file cache and local storage for CSV snapshots.
- **Simple UI** — minimal, responsive interface for quick number generation.

## Live Site

👉 [Lottery Generator App](https://mheydon73-lottery-generator.azurewebsites.net/)

## Repository

👉 [GitHub Repo](https://github.com/markheydon/national-lottery-generator)

---

This project demonstrates practical Laravel development, containerization for local workflows, and thoughtful refactoring to reduce costs and complexity. It’s a good example of evolving a legacy app into a modern, maintainable solution.
