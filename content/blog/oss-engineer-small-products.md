---
title: "Open source, custom work, and apps smaller businesses can actually afford"
description: "Custom software got too expensive for most smaller businesses. AI made day-rate work quieter. Productised tools for one real job might be how that work gets funded."
summary: "Custom software got too expensive for most smaller businesses. AI made day-rate work quieter. Productised tools for one real job might be how that work gets funded."
date: 2026-08-26
tags:
  - AI
  - GitHub
  - Microsoft 365
  - .NET
---

## The call for custom work is quieter

I still care about open source. I design it, ship it, and keep it maintained because the problems are real. I am also not pretending GitHub stars pay the bills. Sponsorship helps. Paid work has to sit next to it.

That paid work used to look like custom apps. A smaller business had a spreadsheet, a Microsoft 365 tenant, and a process that did not quite fit anything off the shelf. You scoped it, built it, handed it over, and hoped the maintenance conversation happened before the next financial year.

That call is not what it was. Some of that is fashion. Some of it is AI: people can get a demo-shaped thing on a laptop in an afternoon, so a proper build feels expensive before anyone has counted what it costs to run the thing for three years. The middle of the market, the CRUD app that used to be a six-week job, is the bit that got squeezed.

I do not think smaller businesses suddenly stopped needing software. I think they stopped being able to justify *bespoke* software for jobs that should have been a product all along.

## Custom was never the right price for a spreadsheet job

Custom is expensive because you pay for discovery, a unique codebase, and someone who still answers the phone when Graph changes a permission. That is rational for a messy, one-off integration. It is a terrible price for "get this CSV into Planner without making a mess" or "invoice the WordPress hosting from the CRM."

Those jobs feel custom because the business is small and the workflow is theirs. They are not custom in the engineering sense. The same shape shows up again and again. The spreadsheet is never the plan. The invoice should not be typed twice. FreeAgent and Microsoft 365 already hold the data; the gap is a cautious UI and a write that only happens when you confirm.

When that is sold as a unique app, it prices itself out of the people who need it. When it is sold as a product, the same people can actually buy it.

## What AI changed (and what it did not)

AI did not make maintenance free. It did not make Entra consent screens nicer. It did not make a multi-tenant hosted app a weekend toy.

It *did* change the cost of getting a focused tool to a point where you can dogfood it. For a solo developer, that matters. One person can now ship the boring workflow they already know, keep the repo public, and still have time left to run the hosted version.

That is why this is a better time to promote small apps than it is to sell another custom build. The buyer is wary of a big project. They are less wary of a tool that does one job, shows a preview, and writes only when they say so.

The industry talk is "product strategy." The useful version of that, for the kind of work I do, is narrower: stop rebuilding the same Microsoft 365 or ops job for each customer. Put the workflow in a product. Let the technical folk self-host. Charge for hosted, support, or the bits that are painful to run yourself.

That is how smaller businesses get something that *feels* custom without paying for a unique codebase. Configuration and a tenant, not a fork.

## Open source is still the right default for the core

I am not interested in a closed blob that solves a problem I already wrote about in public. The libraries and the self-host path are how you stay honest. If the tool is real, someone should be able to run it against their own tenant.

[Import To Planner](/projects/import-to-planner/) is the example I already had in mind. CSV in, validate, preview, confirm. Self-host against your own Entra tenant is first-class. A hosted multi-tenant mode exists if you need it; you do not need it to use the software. The paid story, if there is one, sits on top of that: running it for people who do not want to babysit Azure.

The same pattern shows up elsewhere in the fleet. [freeagent-dotnet](/projects/freeagent-dotnet/) is a library. [SoloDevBoard](/projects/solo-dev-board/) is a tool I built because I was drowning in GitHub tabs. Internal billing for hosted WordPress sites is the same shape again: one operational job, a domain model, a write to Stripe when the data is right.

Open source funds trust and reuse. It does not, on its own, fund hosting, CI, and the years after v1. That is the bit sponsorship and a product SKU are for.

## What I am not going to do

I am not going to pretend every repo should have a pricing page. A weekend experiment and a Planner import are not the same kind of thing.

I am not going to chase "AI-powered" as a category. The useful claim is: AI in the loop so more of the right work ships, then a product that a smaller business can actually run.

I am not going to treat custom work as dead. The awkward integrations will still need someone who has done this for decades. They just should not be the default offer for a job that ten businesses share.

## So where does the money actually come from

For an open-source engineer who already lives in Microsoft 365, .NET, and small-business ops, the mix that does not feel like a costume is:

1. **Keep the core public.** Self-host stays real. Libraries stay libraries.
2. **Pick one workflow and productise it.** Hosted, billed, boring. Not a platform. One job done carefully.
3. **Charge for the running of it**, not for the privilege of seeing the source. Hosting, identity, backups, the version that signs in with their tenant without them reading a deploy doc.
4. **Sponsorship for maintenance of the public tools**, with no theatre about it replacing a living.

That is a product strategy in the modest sense. Smaller businesses can afford a tool that fits because you already paid the discovery cost across the last ten times you saw the same spreadsheet. Custom, as a feeling. Product, as an invoice.

## Final thoughts

I still want to ship practical tools and keep them maintained. The funding model has to match the decade we are in. Day-rate custom for every ops gap is a poor fit for the buyer and a poor fit for a solo developer who also wants a public fleet that does not go stale.

If the industry is moving toward products that smaller businesses can actually buy, that is not a threat to this kind of engineering. It is the first time the price of a focused app and the budget of a smaller business have a chance of meeting in the middle.
