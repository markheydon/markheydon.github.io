---
name: sync-public-identity
description: Syncs this Hugo showcase from identity.md into hugo.yml, plus consultant-voice scan and allowed tags.
  Use when the user edits identity.md, runs /sync-identity, or asks to update public messaging, branding, or taxonomy on markheydon.me.uk.
---

# Sync public identity

## Do first

Read [identity.md](../../../identity.md) at the repo root. That file is the source of truth. Do not invent consultant or care-plan copy for **this site**. Do not edit markheydon.co.uk.

## Surface rules

| Surface | MHCG LTD / consultancy / Care Plans |
|--------|-------------------------------------|
| This repo (`hugo.yml`, `content/**`, site about/hero) | **Out of scope.** Developer / open-source message only. Globe link to `.co.uk` is intentional. |
| LinkedIn block in `identity.md` | **Allowed.** Shared audience: keep MHCG framed as Microsoft 365 Business **solutions** and **consultancy** for smaller businesses (not technical support / helpdesk). Report the paste block as written. |
| GitHub README, bio, Sponsors | Developer / open-source / Sponsors only unless `identity.md` explicitly includes MHCG there. |

When scanning or rewriting in-repo copy: strip accidental MHCG sales language from the **site**. Do **not** strip or “correct away” the LinkedIn MHCG paragraph in `identity.md`.

## Punctuation

**No em dashes (`—`).** Do not introduce them when editing `identity.md`, `hugo.yml`, content, or paste blocks. If existing copy uses an em dash, replace it: use a full stop, comma, colon, parentheses, or a short new sentence that keeps the same meaning. Never leave an em dash in synced or rewritten public copy.

## Workflow

1. **Site**: Copy the Site section into [hugo.yml](../../../hugo.yml): `title`, `params.description`, `hero.subtitle`, `hero.content`, `about.content`, `about.skills.title`, `about.skills.items`, `contact.content`. Keep `hero.subtitle` short (display line under the name); put the longer supporting sentence in `hero.content` (theme body copy). Leave email, social URLs, and the globe link to markheydon.co.uk unchanged unless identity.md says otherwise.

2. **Voice scan (this site only)**: Search `hugo.yml`, `content/**`, and site-facing templates for consultant, consultancy, care plan, IT Professional, and SMB-services pitch language that would put MHCG offerings on markheydon.me.uk. Fix those. Skip intentional `.co.uk` URLs. Skip the LinkedIn / paste-only sections inside `identity.md`.

3. **Em dash scan**: Search `identity.md` and synced site copy for `—`. Rewrite any hits without an em dash before finishing.

4. **Tags**: Apply only the Allowed tags list from identity.md to `content/blog/**` and `content/projects/**`. Do not invent tags. Do not fill `categories`. Refresh `.frontmatter/database/taxonomyDb.json` to match real tags.

5. **Report paste-only surfaces**: Quote the GitHub README, GitHub bio, Sponsors, and LinkedIn blocks from identity.md **verbatim** (including the MHCG LTD closer on LinkedIn). Do not push other repos or change GitHub/LinkedIn/Sponsors via API. Remind the user that LinkedIn may mention MHCG; this profile site must not. If those blocks still contain em dashes, fix them in `identity.md` first, then report the cleaned text.

## Done when

- `hugo.yml` homepage strings match identity.md Site section.
- No leftover consultant / Care Plan identity on this site (except the company URL).
- LinkedIn paste block still includes the MHCG LTD solutions/consultancy line from identity.md when reporting.
- No em dashes in `identity.md` public copy or synced `hugo.yml` strings.
- Tags are from the allowed list.
- The user has the paste blocks for platforms this repo does not own.
