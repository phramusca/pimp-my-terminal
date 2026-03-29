#!/bin/bash
# Construit le paquet .deb pimp-my-terminal
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
PKG="$ROOT/pimp-my-terminal"
chmod 755 "$PKG/usr/local/bin/pimp-my-terminal" \
  "$PKG/DEBIAN/postinst" "$PKG/DEBIAN/postrm"
cd "$PKG"
if command -v fakeroot >/dev/null 2>&1; then
  fakeroot dpkg-deb --build . ..
else
  dpkg-deb --build . ..
fi
echo "Paquet créé : $ROOT/pimp-my-terminal_1.0_all.deb"
