---
name: sync-public-identity
description: Syncs this Hugo showcase from identity.md — homepage copy in hugo.yml, consultant-voice scan, allowed tags. Use when the user edits identity.md, runs /sync-identity, or asks to update public messaging, branding, or taxonomy on markheydon.me.uk.
---

# Sync public identity

## Do first

Read [identity.md](../../../identity.md) at the repo root. That file is the source of truth. Do not invent consultant or care-plan copy. Do not edit markheydon.co.uk.

## Workflow

1. **Site** — Copy the Site section into [hugo.yml](../../../hugo.yml): `title`, `params.description`, `hero.subtitle`, `about.content`, `about.skills.title`, `about.skills.items`, `contact.content`. Leave email, social URLs, and the globe link to markheydon.co.uk unchanged unless identity.md says otherwise.

2. **Voice scan** — Search the repo for consultant, consultancy, care plan, IT Professional, and SMB-services pitch language. Fix in-repo copy that should match the developer message. Skip intentional `.co.uk` URLs.

3. **Tags** — Apply only the Allowed tags list from identity.md to `content/blog/**` and `content/projects/**`. Do not invent tags. Do not fill `categories`. Refresh `.frontmatter/database/taxonomyDb.json` to match real tags.

4. **Report paste-only surfaces** — Quote the GitHub README, GitHub bio, Sponsors, and LinkedIn blocks from identity.md. Do not push other repos or change GitHub/LinkedIn/Sponsors via API.

## Done when

- `hugo.yml` homepage strings match identity.md.
- No leftover consultant identity on this site (except the company URL).
- Tags are from the allowed list.
- The user has the paste blocks for platforms this repo does not own.
