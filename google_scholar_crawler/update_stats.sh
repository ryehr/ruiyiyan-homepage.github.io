#!/usr/bin/env bash
# Refresh the citation stats from the lab server instead of GitHub Actions.
#
# Google Scholar blocks GitHub's runner IPs (a captcha or a 403 on most days),
# but not this server's. Cron runs this daily; it produces the same two JSON
# files the workflow used to, and force-pushes them to the google-scholar-stats
# branch that the homepage badge reads.
set -euo pipefail

SCHOLAR_ID="Wfkf1S4AAAAJ"
REMOTE="git@github.com:ryehr/ruiyiyan-homepage.github.io.git"
SSH_KEY="$HOME/.ssh/id_ed25519_lotus"
PYTHON=/mnt/poppy/home/ruiyi/anaconda3/bin/python3
CRAWLER_DIR="$(cd "$(dirname "$0")" && pwd)"
# Local disk on purpose: /mnt/poppy is NFS. If tmpfiles cleanup ever removes
# this directory, the venv is simply rebuilt on the next run.
STATE=/var/tmp/ruiyi-scholar

mkdir -p "$STATE"
if [ ! -x "$STATE/venv/bin/python" ]; then
  "$PYTHON" -m venv "$STATE/venv"
fi
"$STATE/venv/bin/pip" install -q --disable-pip-version-check -r "$CRAWLER_DIR/requirements.txt"

WORK=$(mktemp -d "$STATE/run.XXXXXX")
trap 'rm -rf "$WORK"' EXIT
cd "$WORK"

# On a captcha, scholarly waits up to a week for a human to solve it; give up
# after 10 minutes instead. A normal run takes well under one.
GOOGLE_SCHOLAR_ID="$SCHOLAR_ID" timeout 600 "$STATE/venv/bin/python" "$CRAWLER_DIR/main.py" > /dev/null

# Never publish something that does not look like a real result.
CITEDBY=$("$STATE/venv/bin/python" - <<'PY'
import json
d = json.load(open("results/gs_data.json"))
s = json.load(open("results/gs_data_shieldsio.json"))
assert isinstance(d["citedby"], int) and d["citedby"] > 0, d.get("citedby")
assert s["message"] == str(d["citedby"]), s
print(d["citedby"])
PY
)

cd results
git init -q
git add gs_data.json gs_data_shieldsio.json
git -c user.name="Ruiyi Yan" -c user.email="yanruiyi001@gmail.com" \
    commit -q -m "Updated Citation Data"
GIT_SSH_COMMAND="ssh -i $SSH_KEY -o IdentitiesOnly=yes -o BatchMode=yes" \
    git push -q --force "$REMOTE" HEAD:google-scholar-stats

echo "$(date '+%F %T') pushed citedby=$CITEDBY"
