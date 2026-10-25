#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "This installer only runs on macOS. Edit files freely on Windows."
  exit 1
fi

cat <<'NOTICE'
This script is intended for a personally configurable macOS workstation.
On a company-managed device, obtain IT approval before proceeding.
It will not install Homebrew, alter credentials, or overwrite your dotfiles.
NOTICE
read -r -p "Has IT authorized Homebrew/package installation? [y/N] " consent
if [[ ! "$consent" =~ ^[Yy]$ ]]; then
  echo "No changes made."
  exit 0
fi

if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is not installed. Consult your IT team for the approved setup."
  exit 1
fi

echo "Packages defined in Brewfile:"
cat "$ROOT/macos/Brewfile"
read -r -p "Run brew bundle install? [y/N] " install
if [[ "$install" =~ ^[Yy]$ ]]; then
  brew bundle install --file="$ROOT/macos/Brewfile"
else
  echo "Skipped."
fi

echo "Dotfiles and editor settings are intentionally not copied automatically."
echo "Read README.md for optional manual steps."
