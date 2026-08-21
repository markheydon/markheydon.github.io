#!/usr/bin/env bash
# List frontmatter image: paths under content/projects and content/blog
# that are missing from static/images/projects/
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../../../.." && pwd)"
IMG_DIR="$ROOT/static/images/projects"

missing=0
ok=0

while IFS= read -r file; do
  img=$(grep -E '^image:' "$file" | head -1 | sed -E 's/^image:[[:space:]]*"?([^"]+)"?/\1/' | tr -d '\r')
  [[ -z "$img" ]] && continue
  rel="${img#/images/projects/}"
  path="$IMG_DIR/$rel"
  if [[ -f "$path" ]]; then
    echo "OK   $rel  ($file)"
    ((ok++)) || true
  else
    echo "MISS $rel  ($file)"
    ((missing++)) || true
  fi
done < <(grep -rl '^image:' "$ROOT/content/projects" "$ROOT/content/blog" 2>/dev/null | grep -v '_index.md' || true)

echo "---"
echo "ok: $ok  missing: $missing"
exit 0
