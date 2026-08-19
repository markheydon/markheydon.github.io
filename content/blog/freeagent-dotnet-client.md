---
title: "A FreeAgent Client for .NET, Because I Was Tired of Copying OAuth"
description: "Starting an open-source FreeAgent API library with token refresh, retries, and pagination built in."
summary: "Starting an open-source FreeAgent API library with token refresh, retries, and pagination built in."
image: "/images/projects/freeagent-dotnet.png"
date: 2026-01-15
tags:
  - .NET
  - C#
  - FreeAgent
---

## The same plumbing, again

Every time I need to talk to [FreeAgent](https://dev.freeagent.com/docs) from .NET, I end up solving the same problems: OAuth 2.0, token refresh, rate-limit headers, and pagination. That is not interesting work the second time, and it is actively annoying the third.

I wanted a client that behaved like a proper SDK rather than a pile of `HttpClient` calls in the next app. So I started [freeagent-dotnet](https://github.com/markheydon/freeagent-dotnet).

## What it does today

It is still prerelease, and I am being explicit about that rather than pretending the public API is frozen.

What is in:

- OAuth helper for the authorization-code flow, including refresh.
- Typed errors instead of raw HTTP (rate limit, OAuth, general API).
- Bounded retries with backoff, honouring `Retry-After`.
- Company details, business categories, tax timeline.
- Contacts as a single page or an `IAsyncEnumerable` auto-pagination stream.

It targets **.NET 8** and **.NET 10**. Mutating HTTP methods do not retry unless you opt in. That is deliberate.

## What it is not

It is not full API coverage yet. Company and Contacts were the starting point because that is what I actually needed. The rest of the API is the reason to keep the repo open.

## Project details

The technical write-up is here: [FreeAgent .NET Client](/projects/freeagent-dotnet/).

## Final thoughts

Libraries are unglamorous. This one exists so I never have to paste token-refresh code into a Blazor app again, and so anyone else in the same boat does not have to either.
