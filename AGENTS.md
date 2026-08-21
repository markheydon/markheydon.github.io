# Agent notes

This repository publishes [markheydon.me.uk](https://markheydon.me.uk/), a **developer / showcase** site. It is not the MHCG LTD consultancy site.

- **Consultancy / Care Plans / MHCG sales:** [markheydon.co.uk](https://markheydon.co.uk/) and (where written) the LinkedIn paste block in identity.md, **not** this site. Do not add that offering to hugo or content here. The homepage globe icon to `.co.uk` is intentional.
- **Source of truth for public developer copy:** [identity.md](identity.md). Edit that first when the message changes. LinkedIn may name MHCG LTD; this site must not.
- **Apply it in this repo:** follow `.cursor/skills/sync-public-identity/SKILL.md`, or the user can run `/sync-identity`.
- **GitHub → Projects / Blog:** follow `.cursor/skills/sync-github-content/SKILL.md`, or run `/sync-github-content`. Maintains [`github-content-index.md`](github-content-index.md). Drafts missing project pages locally; blog posts only when warranted. **Never AI-generate project/blog UI screenshots**; use real captures or omit `image:` until the user supplies one.
- **Tags:** only the allowed list in identity.md. No custom Hugo taxonomies. Leave `categories` empty. Project cards use `badges`; still set `tags` on the page.
- **Do not** push GitHub profile README, Sponsors, or LinkedIn from this repo. Those stay paste-from-identity.md (LinkedIn includes headline, About, and Experience).
- **No em dashes:** Never use an em dash (`—`) in copy written or edited for this repo (including `identity.md`, `hugo.yml`, content, and paste blocks). Rephrase with a full stop, comma, colon, parentheses, or a short new sentence instead.
