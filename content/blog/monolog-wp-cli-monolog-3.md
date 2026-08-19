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

Debug respects `--debug`. Info respects `--quiet`. Errors always show. That mapping is the whole point of the handler.

The work this year was refusing to let it rot.

## What changed

The current line targets **Monolog 3** and PHP **8.1** and up. CI runs across 8.1–8.5. The 2.x branch stays for Monolog 2 users and still gets critical fixes.

WordPress support is an explicit smoke-test matrix rather than a vague “it works with WordPress” claim. I would rather list the tuples I actually run than imply a blanket guarantee.

Docs followed later in August: a Hugo site, GitHub Actions, published at [markheydon.me.uk/monolog-wp-cli](https://markheydon.me.uk/monolog-wp-cli/). The README now matches what the package does, including the NOTICE-level change from `WP_CLI::warning()` to `WP_CLI::log()` in v2.2, and how to get the old behaviour back if you need it.

## Project details

The technical write-up is here: [Monolog WP-CLI Handler](/projects/monolog-wp-cli/).

## Final thoughts

This is not a new idea. It is a maintained one. The useful work was the major-version bump, the support policy, and documentation that is not a lie of omission.
