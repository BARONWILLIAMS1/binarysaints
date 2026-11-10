# BinarySaints

> A one-command PHP webshell CLI — PHP 5.3+ compatible, stdlib-only, single file.

BinarySaints is a lightweight, Weevely-inspired command-line interface for
managing a password-protected PHP backdoor on an authorized test target. It
focuses on **compatibility** (PHP 5.3 through 8.x) and **zero dependencies**
(Python 3 standard library only), filling the gap left by tools that emit
PHP 7+ syntax and fail on older targets.

> ⚠️ **For authorized security testing only.** Use exclusively against systems
> you own or have explicit written permission to test. Unauthorized access to
> computer systems is illegal in most jurisdictions.

---

## Features

| Category | Commands |
|---|---|
| Shell | `<any command>`, `:sysinfo`, `:phpinfo`, `:cd`, `:ls` |
| Files | `:read`, `:get`, `:put`, `:find`, `:grep` |
| Recon | `:privesc`, `:suid`, `:passwd`, `:procs`, `:netstat`, `:cron`, `:ssh`, `:history`, `:env` |
| Exploit | `:mysql "<query>"`, `:rev <lhost> <lport>`, `:listen <lhost> <lport>` |
| Transport | base64 request/response obfuscation |

- **PHP 5.3+ compatible** — no `??`, no arrow functions, no `http_response_code()`
- **No dependencies** — pure Python 3 stdlib
- **Single file** — copy, `chmod +x`, done
- **One command** — `binarysaints <url> <password>` connects; no subcommand to remember
- **Transparent errors** — if the handshake fails, prints the actual server response instead of an opaque "communication failed"

---

## Install

### Option A — clone and symlink

```bash
git clone https://github.com/BARONWILLIAMS1/binarysaints.git
cd binarysaints
sudo ln -sf "$PWD/binarysaints" /usr/local/bin/binarysaints
