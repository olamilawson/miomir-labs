#!/usr/bin/env bash
#
# Deploy miomirlabs.com.
#
# The VPS holds a clone of this repository at /var/www/miomirlabs.com and nginx
# serves its docs/ subdirectory. Deploying is therefore a git pull on the
# server, not a file copy. Push to GitHub first; this only moves the server to
# whatever is already on origin/main.
#
#   ./scripts/deploy.sh            # show what the server would pull
#   ./scripts/deploy.sh --live     # actually pull
#
# Configure once in scripts/deploy.env (gitignored), or export in your shell:
#   DEPLOY_HOST=root@203.0.113.10
#   DEPLOY_PORT=22

set -euo pipefail

cd "$(dirname "$0")/.."

[ -f scripts/deploy.env ] && . scripts/deploy.env

DEPLOY_PORT="${DEPLOY_PORT:-22}"
DEPLOY_PATH="${DEPLOY_PATH:-/var/www/miomirlabs.com}"
LIVE=0
[ "${1:-}" = "--live" ] && LIVE=1

if [ -z "${DEPLOY_HOST:-}" ]; then
  echo "error: set DEPLOY_HOST (scripts/deploy.env or your shell)." >&2
  exit 1
fi

# That VPS serves ~18 domains. Never operate outside the miomirlabs clone.
case "$DEPLOY_PATH" in
  *miomirlabs*) ;;
  *) echo "error: DEPLOY_PATH does not name miomirlabs: $DEPLOY_PATH" >&2; exit 1 ;;
esac

SSH=(ssh -p "$DEPLOY_PORT" "$DEPLOY_HOST")

if [ "$LIVE" -eq 0 ]; then
  echo "==> server state (no changes made)"
  "${SSH[@]}" "cd $DEPLOY_PATH && git fetch --quiet origin && \
    echo 'at:      '\$(git log --oneline -1) && \
    echo 'origin:  '\$(git log --oneline -1 origin/main) && \
    echo 'behind:  '\$(git rev-list --count HEAD..origin/main)' commit(s)' && \
    echo 'dirty:   '\$(git status --porcelain | wc -l)' file(s)'"
  echo
  echo "==> DRY RUN. Rerun with --live to pull."
  echo "    If 'dirty' is not 0, inspect it before pulling; someone edited the"
  echo "    server directly. Note core.filemode is set false in that clone, so"
  echo "    permission-only noise is already ignored."
  exit 0
fi

echo "==> pulling on $DEPLOY_HOST:$DEPLOY_PATH"
"${SSH[@]}" "cd $DEPLOY_PATH && git pull --ff-only && git log --oneline -1"

echo "==> deployed. verify:"
echo "    curl -sI https://miomirlabs.com/ | head -1"
