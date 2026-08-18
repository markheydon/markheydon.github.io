---
title: "Dropping Laravel from the Lottery Generator"
description: "The lottery app did not need a framework any more — so I took it out."
summary: "The lottery app did not need a framework any more — so I took it out."
image: "/images/projects/national-lottery-generator-app.png"
date: 2026-08-06
tags:
  - Personal Projects
  - PHP
---

## A framework-sized app that was not

Last December I [wrote about using AI to drag the lottery generator into the present](/blog/lottery-generator-app-updated-by-ai/). That pass was about Laravel versions, tests, and not wanting to touch Composer conflicts by hand.

A few months later the honest question was different: why is this still a Laravel app?

It serves a handful of game pages, caches some CSVs on disk, and prints numbers. There is no user accounts, no queue, no Eloquent model that earns its keep. The framework was leftover from 2019-me wanting to try Laravel.

## What changed

In August 2026 I migrated it to **vanilla PHP 8.3–8.5**. Composer stays for autoloading and the dev tools. The public folder is a front controller. Templates are plain PHP. CI still runs Pint, PHPUnit across a few PHP versions, Playwright, and PHPMD.

The live site is the same URL. The behaviour is the same on purpose. The win is what is *not* there: no database, no framework upgrade treadmill, and a deploy that is `composer install --no-dev` onto Azure with `public/` as the web root.

## Was AI involved? Of course it was

The migration went through as a proper epic with tests moved, leftovers deleted, and docs rewritten. I still used agents for the boring mechanical bits — the same deal as last time. Judgement was deciding the framework was the problem, not the PHP.

## Project details

The updated write-up is here: [National Lottery Generator App](/projects/national-lottery-generator-app/).

## Final thoughts

Keeping a tiny app on a big framework is a kind of nostalgia. It is also a tax. Once the tests existed, taking Laravel out was the cheaper way to keep the joke running.
