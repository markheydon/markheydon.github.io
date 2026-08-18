---
title: "Monolog WP-CLI Handler"
date: 2026-08-14
tags: ["PHP", "WordPress", "WP-CLI"]
summary: "A Monolog handler that routes log output through WP-CLI — upgraded to Monolog 3 this year."
description: "A Monolog handler that routes log output through WP-CLI — upgraded to Monolog 3 this year."
image: "/images/projects/monolog-wp-cli.png"
badges:
  - "PHP"
  - "Monolog"
  - "WP-CLI"
links:
  - icon: fas fa-link
    url: https://markheydon.me.uk/monolog-wp-cli/
  - icon: fab fa-github
    url: https://github.com/markheydon/monolog-wp-cli
---

## Overview

**Monolog WP-CLI Handler** is a small Composer package (`mhcg/monolog-wp-cli`) that sends [Monolog](https://github.com/Seldaek/monolog) output through WP-CLI when a command is running under `wp`.

It is one of the older things I still maintain. Debug lines only appear with `--debug`, info respects `--quiet`, errors always show, and critical can exit. That mapping is the whole point: your application logger behaves like WP-CLI instead of writing to a file nobody looks at during a command.

This year I brought it onto **Monolog 3**, set a PHP 8.1 floor, and moved the docs to a Hugo site with GitHub Actions deploying to Pages. The 2.x line stays available for Monolog 2 users and still gets critical fixes. WordPress support is an explicit smoke-test matrix rather than a vague “it works with WordPress” claim.

## Technologies Used

- **PHP 8.1–8.5** — current runtime floor and CI matrix.
- **Monolog 3** — PSR-3 logging; v2 branch retained for the previous major.
- **WP-CLI** — `WP_CLI::log`, `warning`, `error`, and `--debug` / `--quiet` behaviour.
- **PHPUnit, PHPCS, PHPMD** — tests and PSR-12 linting.
- **Hugo** — published docs at [markheydon.me.uk/monolog-wp-cli](https://markheydon.me.uk/monolog-wp-cli/).

## Key Features

- **Drop-in handler** — `WPCLIHandler` on a normal Monolog logger.
- **WP-CLI-aware levels** — quiet, default, and debug output match how `wp` already works.
- **Verbose context** — `context` and `extra` only when you ask, or when `WP_DEBUG` is on.
- **Overridable level map** — restore older NOTICE-as-warning behaviour if you need it.

## Docs

👉 [markheydon.me.uk/monolog-wp-cli](https://markheydon.me.uk/monolog-wp-cli/)

## Package

👉 [Packagist](https://packagist.org/packages/mhcg/monolog-wp-cli)

## Repository

👉 [GitHub Repo](https://github.com/markheydon/monolog-wp-cli)

---

Not a new idea — a maintained one. The useful work this year was the Monolog 3 line, the support policy, and documentation that matches what the package actually does.
