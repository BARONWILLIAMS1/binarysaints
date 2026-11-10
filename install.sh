#!/usr/bin/env bash
set -euo pipefail
SRC="$(cd "$(dirname "$0")" \&\& pwd)/binarysaints"
DEST="/usr/local/bin/binarysaints"
[[ -f "$SRC" ]] || { echo "[!] binarysaints missing"; exit 1; }
if [[ $EUID -eq 0 ]]; then install -m 0755 "$SRC" "$DEST"; else sudo install -m 0755 "$SRC" "$DEST"; fi
echo "[+] installed: $DEST"
