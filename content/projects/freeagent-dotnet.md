---
title: "FreeAgent .NET Client"
date: 2026-01-15
tags: [".NET", "C#", "FreeAgent"]
summary: "An open-source .NET client for the FreeAgent API with OAuth 2.0, retries, and pagination."
description: "An open-source .NET client for the FreeAgent API with OAuth 2.0, retries, and pagination."
image: "/images/projects/freeagent-dotnet.png"
badges:
  - "C#"
  - ".NET"
  - "OAuth"
links:
  - icon: fab fa-github
    url: https://github.com/markheydon/freeagent-dotnet
---

## Overview

**FreeAgent .NET Client** is an open-source library for talking to the [FreeAgent API](https://dev.freeagent.com/docs) from modern .NET.

I needed a client that behaved like a proper SDK: OAuth 2.0 with token refresh, respect for rate-limit headers, bounded retries, typed errors, and pagination you can either page yourself or consume as an async stream. Coverage is still growing — Company and Contacts are in first — and the public API is still in prerelease, which I am being explicit about rather than pretending it is finished.

It targets **.NET 8** and **.NET 10**, is fully async, and ships with XML docs. If you are wiring FreeAgent into a .NET app and do not want to re-solve OAuth and HTTP transport, this is the starting point I wished existed.

## Technologies Used

- **C# / .NET 8 and 10** — multi-targeted client library.
- **OAuth 2.0** — authorization URL, code exchange, and automatic refresh.
- **HttpClient** — rate-limit headers, `Retry-After`, exponential backoff.
- **xUnit** — automated tests across both target frameworks.

## Key Features

- **OAuth helper** — `FreeAgentOAuthClient` for the authorization code flow.
- **Typed exceptions** — rate limit, OAuth, and general API errors instead of raw HTTP.
- **Pagination** — single page or `IAsyncEnumerable` auto-pagination for contacts.
- **Safe retries** — GET/DELETE by default; mutating methods opt in.
- **Company API** — company details, business categories, tax timeline.
- **Contacts API** — paged list and full auto-pagination.

## Repository

👉 [GitHub Repo](https://github.com/markheydon/freeagent-dotnet)

---

A library rather than an app: the unglamorous plumbing that makes FreeAgent usable from .NET without copying the same OAuth and retry code into every project.
