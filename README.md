# Engineering Lead Starter Kit

A **personal, company-agnostic** setup for preparing a future macOS developer workstation from Windows, plus templates for the first month as a Frontend Engineering Lead.

## From Windows (now)

1. Open this directory in VS Code. Review every file before publishing.
2. Optionally run `git init` and commit it to a **private** repository in your personal account (only if it contains personal, generic configuration).
3. Edit `vscode/settings.json` to match your preferences. Keep scripts as text files; you do not need a Mac today.
4. Optional: validate `macos/bootstrap.sh` with WSL and ShellCheck, but **do not** execute it on Windows.
5. Ensure scripts retain LF line endings; `.gitattributes` enforces this in Git.

## On the Indesia MacBook (later)

**First ask IT** whether the Mac is managed (MDM), how to install approved software, which Git provider/SSO to use, and which AI tools are permitted. Do not change corporate security controls.

Once authorized:
1. Clone/download this personal, generic kit via an approved route. Do not connect personal accounts to a managed device if prohibited.
2. Read the `macos/Brewfile` and `macos/bootstrap.sh` carefully.
3. If IT approves Homebrew and listed packages, run `bash macos/bootstrap.sh` from the repository root. It asks before installing and **does not** install Homebrew itself.
4. Optionally merge selected lines of `macos/zshrc.example` into `~/.zshrc`, and approved non-identity settings from `macos/gitconfig.example` into `~/.gitconfig`. Never blindly overwrite existing settings.
5. Copy or merge `vscode/settings.json` to VS Code's user settings if compatible with team standards. To install recommended extensions selectively, use `code --install-extension <id>` for each line in `vscode/extensions.txt`.
6. Follow the team's official repo-specific instructions for Node, package managers, secrets, signing and remote access.

## Security and work/personal separation

- No tokens, SSH keys, passwords, `.env` files, private certificates or identity-specific Git values belong in this repository.
- Do not upload company source, docs, tickets, logs or notes to personal repositories or unapproved AI tools.
- Company-specific configuration belongs in approved company systems, with proper access controls.
- Do not assume that GitHub, Homebrew, VS Code, iTerm2, Claude Code, or any extension is approved.

## What's included

- `macos/`: reviewed, interactive bootstrap and example dotfiles.
- `vscode/`: conservative editor preferences and extension suggestions.
- `ai/`: generic, safe prompts for architecture and PR assessment.
- `leadership/`: onboarding, 1:1 and 30-day assessment templates.

## Intentionally not included

Automated SSH key creation, personal account login, `sudo` or unattended package installation, corporate Git identity, global Node versions, containers, repo-specific architecture or organization data.
