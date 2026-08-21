# Public identity (source of truth)

This file is the canonical copy for **developer-facing** public surfaces. MHCG LTD consultancy copy lives on [markheydon.co.uk](https://markheydon.co.uk/) and is out of scope here.

**When the message changes:** edit this file first, then run `/sync-identity` (skill: `sync-public-identity`). The agent updates `hugo.yml` and in-repo content. You still paste GitHub, Sponsors, and LinkedIn yourself from the blocks below.

Do not put care-plan or consultant-for-hire copy in this file.

## Canonical voice

Software engineer with a BSc in Software Engineering from the Open University and decades of professional development experience. A significant part of the work is open source: products and libraries designed, shipped, and kept maintained because the problems are real — running a fleet of GitHub repositories, importing work into Microsoft Planner, talking to FreeAgent from .NET, logging WordPress CLI jobs properly. Microsoft 365 is a domain to build in, not a consultancy offering on this site.

## Site

Paste into `hugo.yml` (`title` and `params`). The `/sync-identity` skill does this.

**Document title** (also used as the HTML `<title>` prefix):

```text
Mark Heydon - Software Engineer
```

**Hero subtitle:**

```text
C#/.NET developer. Open-source tools for Microsoft 365 and small-business workflows.
```

**Meta description** (search snippet):

```text
Software engineer building and maintaining open-source tools for Microsoft 365 and small-business workflows. C#, .NET, Blazor, PHP, and Azure.
```

**About** (two paragraphs for `params.about.content`):

```text
I'm a software engineer with a BSc in Software Engineering from the Open University and decades of professional development experience.

A significant part of my work is open source: products and libraries I design, ship, and keep maintained. They exist because the problems are real — running a fleet of GitHub repositories, importing work into Microsoft Planner, talking to FreeAgent from .NET, logging WordPress CLI jobs properly. Microsoft 365 is a domain I still build in, not a consultancy offering on this site.
```

**Skills title:**

```text
Tools and platforms I use to build and maintain that work:
```

**Skills items** (exact strings, `params.about.skills.items`):

- C#
- .NET
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

Software engineer (C#/.NET, plus the odd bit of PHP/WordPress). I build and maintain open-source tools for real Microsoft 365 and small-business workflows.

## 🔧 What I'm working on

I maintain a live project board showing my current work across multiple repositories:

👉 [Mark's Workboard](https://github.com/users/markheydon/projects/6)

This includes:
- Open-source libraries (e.g. FreeAgent integrations).
- Internal tools and automation.
- Ongoing improvements and experiments.

## 🤖 How I work

My development workflow is supported by AI-driven automation, helping keep projects structured and up to date:

👉 https://github.com/markheydon/github-workflows

This is a practical, real-world approach to using AI to assist software delivery -- not just code generation.

## 🚀 Key projects

- [SoloDevBoard](https://github.com/markheydon/solo-dev-board) – multi-repo GitHub workflow tool.
- [Import To Planner](https://github.com/markheydon/import-to-planner) – CSV into Microsoft Planner, with preview before write.
- [freeagent-dotnet](https://github.com/markheydon/freeagent-dotnet) – API client for FreeAgent.
- Various automation utilities and experiments.

## ❤️ Supporting my work

If you find my work useful, you can support it via GitHub Sponsors:

👉 https://github.com/sponsors/markheydon

It helps me continue building, maintaining, and improving the projects tracked on this board.
```

## GitHub bio

Sidebar field. Max 160 characters.

```text
Software engineer (C#/.NET, PHP/WordPress). Open-source tools for Microsoft 365 and small-business workflows.
```

## GitHub Sponsors

Paste into <https://github.com/sponsors/markheydon> (short + full).

**Short description:**

```text
Software engineer (BSc Software Engineering, Open University) with decades of development experience. I design, build, and maintain open-source tools used in real small-business and Microsoft 365 workflows.
```

**Full description:**

```text
I'm a software engineer with decades of professional development experience and a BSc in Software Engineering from the Open University.

A significant part of my work is open source: products and libraries I design, ship, and keep maintained. They exist because the problems are real: running a fleet of GitHub repositories, importing work into Microsoft Planner, talking to FreeAgent from .NET, logging WordPress CLI jobs properly.

Sponsorship funds hosting, CI, and ongoing maintenance of those public tools so they stay production-quality rather than going stale.
```

## LinkedIn

**Option A (recommended if LinkedIn is personal / developer-facing):** paste headline + About. Keep MHCG LTD as the current company, not as the identity.

**Headline:**

```text
Software Engineer | C#/.NET, Microsoft 365, open source
```

**About:**

```text
Software engineer based in Manchester. BSc Software Engineering (Open University), decades of professional development.

I design, ship, and maintain open-source tools for real Microsoft 365 and small-business workflows — multi-repo GitHub work, Planner imports, FreeAgent from .NET, WordPress CLI logging, and related .NET/Blazor apps.

Public work: https://markheydon.me.uk/ and https://github.com/markheydon

I also run MHCG LTD (https://markheydon.co.uk/), which is a separate company offering.
```

**Option B:** if LinkedIn stays the MHCG sales page, leave the consultancy headline and add one line that engineering work lives at <https://markheydon.me.uk/>

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
- `WordPress`

Do not use: Consulting, Personal Projects, GitHub Pages, IaC, API, WP-CLI, Consultancy.

Project cards still use `badges` for the grid UI; `tags` still belong on the page so `/tags/` works.
