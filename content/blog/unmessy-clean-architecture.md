---
title: "Clean Architecture, Without the 47-Project Sample"
description: "After a long stretch away from product code, I needed a Clean Architecture example I could actually follow, so I wrote one."
summary: "After a long stretch away from product code, I needed a Clean Architecture example I could actually follow, so I wrote one."
image: "/images/projects/unmessy-clean-example.png"
date: 2025-11-30
tags:
  - .NET
  - C#
---

## Getting back up to date

After some considerable time away from day-to-day product development, I needed to get my skills somewhere near current practice. Clean Architecture kept coming up. Uncle Bob's essay is short. The samples people point at are not.

I could not, for the life of me, find an example that was not either totally over the top or just plain wrong in its implementation. So, as I often do in these situations, I ignored everybody else and did it my way.

The result is [UnmessyCleanExample](https://github.com/markheydon/UnmessyCleanExample): four projects, dependencies pointing inward, and nothing else pretending to be a framework.

## What is actually in it

- **Domain**: business logic and entities. No other project, no NuGet noise.
- **Application**: use cases and service interfaces. Depends on Domain only.
- **Infrastructure**: adapters. Data access and anything that talks to the outside world.
- **BlazorWebApp**: the UI. It depends inward; Domain does not know it exists.

That is the whole point of the exercise. Outer layers depend on inner ones. The core stays testable. I used the default Blazor template on .NET 10 / C# 14 shortly after Visual Studio 2026 GA, then carved it up until the arrows went the right way.

## Did AI write it?

Some of it. The documentation in particular. Moan about that all you want; AI is here, I have got used to it, and I am really old in *development* terms. The structure is mine. If you disagree with it, that is fine. It helped me wrap my head around the idea, and it might help someone else too.

## Repository

👉 [github.com/markheydon/UnmessyCleanExample](https://github.com/markheydon/UnmessyCleanExample)

## Final thoughts

I did not need a reference architecture for a bank. I needed four boxes and a rule I could remember the next time I started a real app. This is that.
