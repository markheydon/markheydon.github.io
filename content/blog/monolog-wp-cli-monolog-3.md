---
title: "Keeping Monolog WP-CLI Alive for Monolog 3"
description: "The old Packagist package got a Monolog 3 line, a PHP 8.1 floor, and documentation that is actually deployed."
summary: "The old Packagist package got a Monolog 3 line, a PHP 8.1 floor, and documentation that is actually deployed."
image: "/images/projects/monolog-wp-cli.png"
date: 2026-07-13
tags:
  - PHP
  - WordPress
---

## An old package, still in use

[Monolog WP-CLI](https://packagist.org/packages/mhcg/monolog-wp-cli) has been on Packagist for years. It does one job: when a WordPress command is running under `wp`, Monolog output goes through WP-CLI instead of a log file nobody looks at.

It's definitely something that I've allowed to go by the wayside. The last release was back in 2020 and been meaning to get round to updating it for some time now. The Monolog 3 line was added in July 2026, and the PHP floor is now 8.1. The docs are now a Hugo site, deployed to [markheydon.me.uk/monolog-wp-cli](https://markheydon.me.uk/monolog-wp-cli).

## What changed

Updated for **Monolog 3** and PHP **8.1** and up. CI runs across 8.1–8.5. The 2.x branch stays for Monolog 2 users and still gets critical fixes.

WordPress support is an explicit smoke-test matrix rather than a vague “it works with WordPress” claim. I would rather list the tuples I actually run than imply a blanket guarantee.

Docs followed later in August: a Hugo site, GitHub Actions, published at [markheydon.me.uk/monolog-wp-cli](https://markheydon.me.uk/monolog-wp-cli/). The README now matches what the package does, including the NOTICE-level change from `WP_CLI::warning()` to `WP_CLI::log()` in v2.2, and how to get the old behaviour back if you need it.

## Project details

The technical write-up is here: [Monolog WP-CLI Handler](/projects/monolog-wp-cli/).

## Final thoughts

Must admit I'm slightly embarrassed that this package has been on Packagist for years and I never got round to updating it. But it's now in a better state than it was, and the docs are way better than I'd hoped for in such a small project.
