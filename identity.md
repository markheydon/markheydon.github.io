# Public identity (source of truth)

This file is the canonical copy for **developer-facing** public surfaces. MHCG LTD consultancy / Care Plan sales copy lives on [markheydon.co.uk](https://markheydon.co.uk/) and must not appear on this profile site. Exception: the **LinkedIn** paste block below may name MHCG LTD (solutions and consultancy, not technical support), because LinkedIn has a shared audience.

**When the message changes:** edit this file first, then run `/sync-identity` (skill: `sync-public-identity`). The agent updates `hugo.yml` and in-repo content. Human still pastes GitHub, Sponsors, and LinkedIn content.

Do not put care-plan or consultant-for-hire copy in the Site / GitHub / Sponsors sections of this file.

## Canonical voice

Software engineer, self-taught from an early age that formalised later by studying for a degree in Software Engineering with the Open University. Decades of professional development and commercial experience. Builds practical tools for smaller businesses' day-to-day operations, with a particular focus on Microsoft 365 Business technologies. Passionate about open source work: designed, shipped, and kept maintained because the problems are real. Sponsorship and paid work help fund it; open source alone is not expected to pay the bills. As a solo developer, uses AI coding tools openly, not instead of knowing how to build, but so more of the right work actually ships. Main stack today is C#/.NET and PowerShell, with WordPress still in the mix; keeps current with things like .NET Aspire. Microsoft 365 is a domain to build in, not a consultancy offering on this site. Tone: plain, precise, slightly dry; opinionated without hype or buzzwords.

## Site

Paste into `hugo.yml` (`title` and `params`). The `/sync-identity` skill does this.

**Document title** (also used as the HTML `<title>` prefix):

```text
Mark Heydon - Software Engineer
```

**Hero subtitle** (`params.hero.subtitle`, short display line under the name):

```text
Solo C#/.NET developer
```

**Hero content** (`params.hero.content`, body copy under the subtitle):

```text
Practical tools for Microsoft 365 Business and small-business ops, built with AI in the loop so more actually ships.
```

**Meta description** (search snippet):

```text
Solo software engineer building practical tools for Microsoft 365 Business and small-business day-to-day work. C#/.NET, open source, AI in the loop.
```

**About** (two paragraphs for `params.about.content`):

```text
I'm a software engineer, self-taught from an early age, who later formalised that with a Software Engineering degree from the Open University. Decades of professional development and commercial experience.

I build practical tools for smaller businesses' day-to-day operations, with a particular focus on Microsoft 365 Business technologies. I'm passionate about open source work: design it, ship it, keep it maintained, because the problems are real. I maintain a fleet of GitHub repositories: importing work into Microsoft Planner, talking to FreeAgent from .NET, logging WordPress CLI jobs properly. Sponsorship and paid work help fund that, although I'm not pretending open source alone pays the bills. As a solo developer I use AI coding tools openly: not instead of knowing how to build, but so more of the right work actually ships. These days that's mainly C#/.NET and PowerShell, with WordPress still in the mix. I keep current with things like .NET Aspire.
```

**Skills title:**

```text
Tools and platforms I use to build and maintain that work:
```

**Skills items** (exact strings, `params.about.skills.items`):

- C#
- .NET
- PowerShell
- Blazor
- Microsoft Graph
- Azure
- Bicep
- PHP
- WordPress
- GitHub
- Hugo
- Aspire
- Dataverse

**Contact line** (`params.contact.content`):

```text
If you want to talk about a project or an open-source tool, email me.
```

Email stays `hello@markheydon.co.uk`. The globe icon to markheydon.co.uk is intentional (company site).

## GitHub profile README

Paste into `markheydon/markheydon` `README.md`.

```markdown
## Hi, I'm Mark 👋

Solo C#/.NET developer. I build practical tools for Microsoft 365 Business and small-business day-to-day ops. Passionate about open source: I design, ship, and keep a lot of that work maintained.

## 🔧 What I'm working on

I maintain a live project board showing my current work across multiple repositories:

👉 [Mark's Workboard](https://github.com/users/markheydon/projects/6)

This includes:
- Open-source libraries (e.g. FreeAgent integrations).
- Internal tools and automation.
- Ongoing improvements and experiments.

## 🤖 How I work

I'm a solo developer. I use AI coding tools openly, not instead of knowing how to build, but because one person can't do everything alone, and they help more of the right work actually ship.

My automation and workflow setup lives here:

👉 https://github.com/markheydon/github-workflows

## 🚀 Key projects

- [SoloDevBoard](https://github.com/markheydon/solo-dev-board) – multi-repo GitHub workflow tool.
- [Import To Planner](https://github.com/markheydon/import-to-planner) – CSV into Microsoft Planner, with preview before write.
- [freeagent-dotnet](https://github.com/markheydon/freeagent-dotnet) – API client for FreeAgent.
- Various automation utilities and experiments.

## ❤️ Supporting my work

If you find my work useful, you can support it via GitHub Sponsors:

👉 https://github.com/sponsors/markheydon

It helps fund hosting, CI, and ongoing maintenance of the public tools on this board. Open source alone doesn't pay the bills, but sponsorship and paid work help keep that work production-quality.
```

## GitHub bio

Sidebar field. Max 160 characters.

```text
Solo C#/.NET. Practical tools for Microsoft 365 Business & small-business ops. Open source; AI in the loop so more ships.
```

## GitHub Sponsors

Paste into <https://github.com/sponsors/markheydon> (short + full).

**Short description:**

```text
Software engineer, self-taught then Open University Software Engineering degree, decades of commercial experience. Open-source tools for Microsoft 365 Business and small-business day-to-day work.
```

**Full description:**

```text
I'm a software engineer, self-taught from an early age, who later formalised that with a Software Engineering degree from the Open University. Decades of professional development and commercial experience.

I build practical tools for smaller businesses' day-to-day operations, with a particular focus on Microsoft 365 Business technologies. I'm passionate about open source work: products and libraries I design, ship, and keep maintained because the problems are real. Multi-repo GitHub work: Planner imports, FreeAgent from .NET, WordPress CLI logging, and related .NET work.

As a solo developer I use AI coding tools openly, not instead of knowing how to build, but so more of that work actually ships. Sponsorship funds hosting, CI, and ongoing maintenance so those public tools stay production-quality rather than going stale. Open source alone doesn't pay the bills; sponsorship and paid work help keep it going.
```

## LinkedIn

LinkedIn is a **shared** audience (existing MHCG customers and people checking engineering / open-source work). It may name MHCG LTD. This profile site (`markheydon.me.uk`) must not.

**MHCG LTD on LinkedIn (allowed here only):** Microsoft 365 Business **solutions** and **consultancy** for smaller businesses that use those technologies to run their day-to-day operations. Developer work overlaps where solutions need building. Do **not** describe MHCG as technical support, service desk/help desk, or break/fix IT.

**Option A (recommended when LinkedIn carries both engineer and company story):** paste headline + About. Company on LinkedIn can stay MHCG LTD; the About should not make MHCG sound like an afterthought.

**Headline:**

```text
Software Engineer | C#/.NET, Microsoft 365, open source
```

**About:**

```text
Software engineer based in Manchester. Self-taught from an early age; later formalised with a Software Engineering degree from the Open University. Decades of professional development and commercial experience.

I build practical tools for smaller businesses' day-to-day operations, with a particular focus on Microsoft 365 Business technologies. Passionate about open source: design, ship, maintain. Multi-repo GitHub tooling, Planner imports, FreeAgent from .NET, WordPress still in the mix, related .NET/Blazor apps. As a solo developer I use AI coding tools openly, not instead of knowing how to build, but so more of the right work actually ships. Main stack today: C#/.NET and PowerShell; I keep current with things like .NET Aspire.

Public engineering work: https://markheydon.me.uk/ and https://github.com/markheydon

I also have MHCG LTD (https://markheydon.co.uk/), where I provide Microsoft 365 Business solutions and consultancy for smaller businesses, helping them use those technologies to run their operations, including development where it overlaps.
```

**Option B:** if LinkedIn stays primarily the MHCG sales page, keep a consultancy-led headline/About aligned with markheydon.co.uk, and add one line that public engineering / open-source work lives at <https://markheydon.me.uk/>

## Allowed tags

Hugo default taxonomy `tags` only. Exact strings. Do not invent tags. Do not use `categories` unless we decide to later.

- `.NET`
- `AI`
- `Aspire`
- `Azure`
- `Bicep`
- `Blazor`
- `C#`
- `Dataverse`
- `Docker`
- `FreeAgent`
- `GitHub`
- `Hugo`
- `Laravel`
- `Microsoft 365`
- `Microsoft Graph`
- `PHP`
- `PowerShell`
- `WordPress`

Do not use: Consulting, Personal Projects, GitHub Pages, IaC, API, WP-CLI, Consultancy.

Project cards still use `badges` for the grid UI; `tags` still belong on the page so `/tags/` works.
