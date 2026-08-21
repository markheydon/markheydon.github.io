# GitHub content index

Source of truth for which GitHub repos may appear on [markheydon.me.uk](https://markheydon.me.uk/) and how they map to site content. Maintained by `/sync-github-content` and human edits.

## Field reference

| Field | Values | Meaning |
|-------|--------|---------|
| `status` | `showcase` \| `excluded` \| `pending` | May we write or maintain public site content for this repo? |
| `visibility` | `public` \| `private` | From GitHub (informational). |
| `project` | path or empty | Hugo project page under `content/projects/`. Empty = gap to fill. |
| `blog` | `none` \| `has-post` \| `candidate` | Blog coverage. `candidate` = agent proposal only; confirm before writing. |
| `image` | `ok` \| `missing` \| `needs-capture` \| `n/a` | Card/hero screenshot state (see skill screenshot policy). |
| `notes` | free text | Confidentiality, manual-only pages, skip reasons. |

**Defaults on scan:** repo not listed here → treat as `pending`. Forks and `markheydon.github.io` are never auto-showcased.

**Manual site-only:** projects with no GitHub repo use `status: showcase` and `github: none`.

---

## Manual site-only (no GitHub repo)

### hosted-sites-billing-app
- status: showcase
- github: none
- visibility: n/a
- project: content/projects/hosted-sites-app.md
- blog: none
- image: ok (`static/images/projects/hosted-sites-billing-app.png`)
- notes: Internal Blazor billing app; no public repo link by design.

---

## Showcase (approved for the public site)

### markheydon/solo-dev-board
- status: showcase
- visibility: public
- project: content/projects/solo-dev-board.md
- blog: has-post (content/blog/solodevboard-v1.md)
- image: ok (`static/images/projects/solo-dev-board.png`)

### markheydon/import-to-planner
- status: showcase
- visibility: public
- project: content/projects/import-to-planner.md
- blog: has-post (content/blog/import-to-planner.md)
- image: ok (`static/images/projects/import-to-planner.png`)

### markheydon/freeagent-dotnet
- status: showcase
- visibility: public
- project: content/projects/freeagent-dotnet.md
- blog: has-post (content/blog/freeagent-dotnet-client.md)
- image: ok (`static/images/projects/freeagent-dotnet.png`)

### markheydon/monolog-wp-cli
- status: showcase
- visibility: public
- project: content/projects/monolog-wp-cli.md
- blog: has-post (content/blog/monolog-wp-cli-monolog-3.md)
- image: ok (`static/images/projects/monolog-wp-cli.png`)

### markheydon/meaty-times
- status: showcase
- visibility: public
- project: content/projects/meaty-times.md
- blog: has-post (content/blog/meaty-times-roast-calculator.md)
- image: ok (`static/images/projects/meaty-times.png`)

### markheydon/national-lottery-generator
- status: showcase
- visibility: public
- project: content/projects/national-lottery-generator-app.md
- blog: has-post (content/blog/lottery-without-laravel.md, content/blog/lottery-generator-app-updated-by-ai.md)
- image: ok (`static/images/projects/national-lottery-generator-app.png`)

### markheydon/avd-occasional
- status: showcase
- visibility: public
- project: content/projects/avd-occasional-bicep.md
- blog: has-post (content/blog/avd-occasional-bicep-journey.md)
- image: ok (`static/images/projects/avd-occasional-bicep.png`)

### markheydon/the-teachings-of-monkey
- status: showcase
- visibility: public
- project: content/projects/the-teachings-of-monkey.md
- blog: has-post (content/blog/monkey-ai-and-me.md)
- image: ok (`static/images/projects/the-teachings-of-monkey-site.png`)

### markheydon/UnmessyCleanExample
- status: showcase
- visibility: public
- project: (missing — gap)
- blog: has-post (content/blog/unmessy-clean-architecture.md)
- image: ok (`static/images/projects/unmessy-clean-example.png`; blog reuses same path)

### markheydon/turpinverse
- status: showcase
- visibility: public
- project: (missing — gap)
- blog: has-post (content/blog/turpinverse.md)
- image: ok (`static/images/projects/turpinverse.png`; blog reuses same path)

---

## Auto-skip (excluded; do not prompt every scan)

### markheydon/markheydon.github.io
- status: excluded
- visibility: public
- notes: This Hugo site repository.

### markheydon/hugo-profile
- status: excluded
- visibility: public
- notes: Upstream theme fork.

### markheydon/markheydon
- status: excluded
- visibility: public
- notes: GitHub profile README repo; paste from identity.md, not a project page.

### markheydon/github-workflows
- status: excluded
- visibility: public
- notes: Shared workflow templates; supporting repo, not a standalone showcase product.

---

## Pending (decide on next `/sync-github-content` run)

Repos owned on GitHub that are not listed above default to **pending** when the skill scans. Examples likely to need a decision:

| Repo | Visibility | Notes |
|------|------------|-------|
| markheydon/billdrift-web | public | Recent activity; no project page yet |
| markheydon/better-freeagent-projects | private | BFAP add-on |
| markheydon/m365-self-managed | public | M365 guide repo |
| markheydon/rename-my-files-ai | public | PowerShell utility |
| markheydon/stripe-metadata-manager | public | |
| markheydon/devcontainer-features | public | |
| markheydon/delay-repay-checker | public | |
| markheydon/wordpress-plugin-dev | public | |
| Private client themes/plugins (`*-wp-theme-*`, `*-wp-plugin-*`, `mhcg-*`, `tcrc-*`, etc.) | private | Usually exclude unless you want a generic write-up |

When you choose `showcase` or `excluded`, move the repo into the sections above and add `notes` if needed.

---

## Image audit snapshot (2026-08-21)

Run `bash .cursor/skills/sync-github-content/scripts/audit-project-images.sh` during each sync.

All showcase project/blog frontmatter paths currently resolve under `static/images/projects/`. If the audit reports `MISS`, do not use AI-generated UI art. Capture a real screenshot or omit `image:` until you have one.

Some existing PNGs may still be inaccurate mock-ups from earlier sessions. Replace those with real captures when you proofread; the skill must never add new invented screenshots.
