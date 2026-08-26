#!/bin/bash
# MTProxyWidum Quick Installer — SamNet Technologies
# Usage: curl -sL https://raw.githubusercontent.com/TETRIX8/MTProxyMaxWidum/main/install.sh | sudo bash
set -e
SCRIPT_URL="https://raw.githubusercontent.com/TETRIX8/MTProxyMaxWidum/main/mtproxywidum.sh"
if [ "$(id -u)" -ne 0 ]; then echo "Run as root: curl -sL $SCRIPT_URL | sudo bash" >&2; exit 1; fi
curl -fsSL "$SCRIPT_URL" -o /tmp/mtproxywidum.sh && bash /tmp/mtproxywidum.sh install && rm -f /tmp/mtproxywidum.sh
