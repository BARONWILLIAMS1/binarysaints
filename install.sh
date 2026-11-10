#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/binarysaints"
DEST="/usr/local/bin/binarysaints"
[[ -f "$SRC" ]] || { echo "[!] binarysaints missing next to install.sh"; exit 1; }
if [[ $EUID -eq 0 ]]; then
    install -m 0755 "$SRC" "$DEST"
else
    sudo install -m 0755 "$SRC" "$DEST"
fi
echo "[+] installed: $DEST"
echo "[*] run: binarysaints"
