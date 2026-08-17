#!/usr/bin/env bash
#
# Deploy the built site in docs/ to the miomirlabs.com document root on the
# Hostinger VPS.
#
# That VPS hosts other live domains, and this script uses --delete, so it
# refuses to run against a path that does not name miomirlabs. It also
# dry-runs unless you pass --live.
#
#   ./scripts/deploy.sh            # dry run, shows what would change
#   ./scripts/deploy.sh --live     # actually sync
#
# Configure once in scripts/deploy.env (gitignored), or export in your shell:
#   DEPLOY_HOST=user@203.0.113.10
#   DEPLOY_PATH=/home/USER/domains/miomirlabs.com/public_html
#   DEPLOY_PORT=22

set -euo pipefail

cd "$(dirname "$0")/.."

[ -f scripts/deploy.env ] && . scripts/deploy.env

DEPLOY_PORT="${DEPLOY_PORT:-22}"
LIVE=0
[ "${1:-}" = "--live" ] && LIVE=1

if [ -z "${DEPLOY_HOST:-}" ] || [ -z "${DEPLOY_PATH:-}" ]; then
  echo "error: set DEPLOY_HOST and DEPLOY_PATH (scripts/deploy.env or your shell)." >&2
  echo "  find the document root on the VPS with:" >&2
  echo "  ssh <host> 'grep -RiE \"root|DocumentRoot\" /etc/nginx/sites-enabled/ /etc/apache2/sites-enabled/ 2>/dev/null | grep -i miomir'" >&2
  exit 1
fi

# Guard: this VPS runs several sites and rsync --delete is not reversible.
case "$DEPLOY_PATH" in
  *miomirlabs*) ;;
  *)
    echo "error: DEPLOY_PATH does not name miomirlabs: $DEPLOY_PATH" >&2
    echo "refusing to --delete against a path that may belong to another domain." >&2
    exit 1
    ;;
esac

case "$DEPLOY_PATH" in
  */) echo "error: drop the trailing slash from DEPLOY_PATH." >&2; exit 1 ;;
esac

echo "==> building CSS"
npm run build

echo "==> syncing docs/ -> $DEPLOY_HOST:$DEPLOY_PATH/"
RSYNC_ARGS=(
  -az --delete --itemize-changes --human-readable
  --exclude '.DS_Store'
  --exclude '.nojekyll'
  -e "ssh -p $DEPLOY_PORT"
  docs/ "$DEPLOY_HOST:$DEPLOY_PATH/"
)

if [ "$LIVE" -eq 1 ]; then
  rsync "${RSYNC_ARGS[@]}"
  echo "==> deployed. verify:"
  echo "    curl -sI https://miomirlabs.com/ | head -1"
  echo "    curl -s https://miomirlabs.com/robots.txt"
else
  rsync --dry-run "${RSYNC_ARGS[@]}"
  echo
  echo "==> DRY RUN. Lines starting with '*deleting' are files that would be"
  echo "    removed from the server. Read them before rerunning with --live."
fi
