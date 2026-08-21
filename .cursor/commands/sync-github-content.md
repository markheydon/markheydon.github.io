---
name: sync-github-content
description: Scan GitHub repos for missing Projects/Blog content and draft local pages to proofread.
---

# Sync GitHub work to Projects and Blog

Follow the project skill `sync-github-content` (`.cursor/skills/sync-github-content/SKILL.md`).

Read `github-content-index.md` first. Use `gh` to list owned repos (including private). For any repo not yet approved, ask whether to **showcase** or **exclude** before writing content.

**Projects:** create missing `content/projects/` pages for every approved repo. No `draft: true`.

**Blog:** propose posts only when there is a genuine story. Do not fabricate a blog post per project.

**Screenshots:** never AI-generate UI images. Use real captures or omit `image:` and report the gap. Run the image audit script and include results.

Do not commit or push unless the user asks. Remind them new content stays local until they review and commit.
