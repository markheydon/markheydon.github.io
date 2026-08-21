---
name: sync-github-content
description: >-
  Scans GitHub repos against markheydon.me.uk project/blog coverage, maintains github-content-index.md,
  drafts missing project pages locally, proposes blog posts only when warranted, and audits screenshot paths.
  Use when the user runs /sync-github-content or asks to sync GitHub work to Projects and Blog content.
---

# Sync GitHub content (Projects / Blog)

## Scope

This skill keeps **project pages** aligned with GitHub work. It does **not** replace [`sync-public-identity`](../sync-public-identity/SKILL.md) (homepage / voice / tags from `identity.md`).

| Surface | This skill |
|--------|------------|
| `content/projects/**` | Yes: fill gaps for approved repos |
| `content/blog/**` | Propose or write only when there is a genuine story |
| `hugo.yml`, identity voice | No |
| Commit / push | No unless the user asks |

## Do first

1. Read [github-content-index.md](../../../github-content-index.md) at the repo root.
2. Read [identity.md](../../../identity.md) **Allowed tags** only (and voice if writing copy).
3. Confirm `gh auth status` works (private repos need a logged-in `gh`).

## Hard rules

### No fabricated screenshots

**Never** use `GenerateImage` or any AI image tool to invent app UIs, docs pages, or “what it might look like.”

**Acquisition order** (stop at first success):

1. Reuse an honest file already under `static/images/projects/` for that project.
2. Copy a real screenshot from the source repo (README, `docs/`) or product site into `static/images/projects/<slug>.png`.
3. Capture from a live public URL (Playwright / browser tooling) when available.
4. Ask the user for a file if the app is local-only, private, or needs auth.
5. **Omit** `image:` in frontmatter and list “needs real screenshot” in the report.

Missing image is better than a lie. Do not “fix” bad art by regenerating UI with AI.

### No draft frontmatter

Write normal Hugo content files the user reviews in git before commit. Do **not** set `draft: true`.

### No blog-per-project

Every approved repo should get a **project page** when missing. **Do not** invent a blog post for each project. Blog only when there is a clear story (release, substantial rewrite, narrative milestone). Default: **propose in the report**; write a blog file only after the user confirms in the same run.

### Site voice (same as identity sync)

- No em dashes (`—`).
- No MHCG / consultancy / Care Plan sales copy on this site.
- Tags: allowed list in `identity.md` only. Leave `categories` empty.
- Plain, precise, slightly dry tone.

## Index maintenance

[`github-content-index.md`](../../../github-content-index.md) is the approval record.

| `status` | Meaning |
|----------|---------|
| `showcase` | May maintain or create public site content |
| `excluded` | Skip (confidential, fork, meta repo, client work) |
| `pending` | Ask the user: `showcase` or `excluded` before writing |

**Not in index** → treat as `pending` on scan.

**Auto-skip without asking:** forks; archived repos (report only); `markheydon/markheydon.github.io`.

After the user decides, move the repo block into the correct section and set `notes`.

## Workflow

### 1. Load local state

- Parse index sections and repo blocks.
- Scan `content/projects/*.md` and `content/blog/*.md` for GitHub URLs in `links`, body, and frontmatter.
- Build map: `owner/repo` → project path, blog paths, `image:` paths.

### 2. List GitHub repos

```bash
gh repo list markheydon --limit 1000 \
  --json name,url,isPrivate,isFork,isArchived,description,pushedAt,updatedAt
```

Drop forks. Respect index `excluded`. Compare to index + local content.

### 3. Pending / unknown repos

If any non-fork, non-archived repo is `pending` or absent from the index, **stop and ask** before writing content. Present a compact table:

| Repo | Private? | Description | Last push |

For each: user chooses `showcase` or `excluded` (+ optional note). Update the index.

Do **not** write project pages for `excluded` or still-`pending` repos.

### 4. Project gaps

For each `showcase` repo where `project:` is empty or the file is missing:

Create `content/projects/<slug>.md` matching existing pages (see [`solo-dev-board.md`](../../../content/projects/solo-dev-board.md), [`monolog-wp-cli.md`](../../../content/projects/monolog-wp-cli.md)):

```yaml
---
title: "..."
date: YYYY-MM-DD
tags: [...]
summary: "..."
description: "..."
badges: [...]
links:
  - icon: fab fa-github
    url: https://github.com/markheydon/<repo>
---
```

Sections: **Overview**, **Technologies Used**, **Key Features** (if applicable), **Repository**.

- Pull facts from repo README / description via `gh repo view` or README fetch. Do not invent features.
- Private repos: high-level copy only; strip client/confidential detail.
- `image:` only if a real file exists or was just captured (see screenshot rules).
- Update index `project:` path and `image:` status.

Known gaps in the seeded index: `UnmessyCleanExample`, `turpinverse`.

### 5. Blog candidates (strict)

Flag `blog: candidate` only when **all** apply:

- Repo is `showcase`.
- No existing related blog post.
- Clear narrative signal: e.g. v1.0 release, major rewrite, new public tool worth a story.
- Not routine commits, dependency bumps, or “we should have a post.”

**Default:** list proposals in the final report with one-line rationale. Write `content/blog/<slug>.md` only if the user already said yes in this conversation.

Reuse project `image:` only when the file exists on disk; same screenshot rules.

### 6. Stale / orphan (report only)

- **Stale:** showcase project page vs repo `pushedAt` / releases clearly out of date (mention; do not auto-rewrite).
- **Orphan:** project page with no matching GitHub repo in index or `gh` list (flag; do not delete).

### 7. Image audit

Run:

```bash
bash .cursor/skills/sync-github-content/scripts/audit-project-images.sh
```

Report every `MISS` line. Cross-check index **Image audit snapshot** section. Remind: replace hallucinated art with real captures; omit `image:` until then.

Optionally update index `image:` fields for showcase repos when status changes.

### 8. Final report

Always include:

1. **Index changes** (repos moved showcase / excluded / pending cleared).
2. **Files created or updated** (paths only).
3. **Project gaps filled** vs still open.
4. **Blog proposals** (or “none”).
5. **Screenshot todos** (missing file, needs capture, ready).
6. **Stale / orphan flags** if any.
7. Reminder: new files are **local until the user commits**; run `/sync-identity` if homepage copy changed separately.

## Project page slug hints

| Repo name | Suggested slug |
|-----------|----------------|
| `UnmessyCleanExample` | `unmessy-clean-example.md` |
| `national-lottery-generator` | `national-lottery-generator-app.md` (match existing blog) |
| `avd-occasional` | `avd-occasional-bicep.md` (match existing) |
| default | kebab-case of repo name |

## Done when

- Index reflects user decisions for all scanned repos (or scan stopped at pending for user input).
- Every `showcase` repo has a project page path in the index and on disk (or is explicitly blocked pending screenshot-only work with page written without `image:`).
- No new AI-generated UI screenshots were added.
- Image audit results are in the report.
- User knows what to proofread before commit.
