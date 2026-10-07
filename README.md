# Dotfiles

This repository contains my personal macOS and shell configuration, organized as a reusable dotfiles setup for a clean, predictable development environment. It centralizes my preferred shell preferences, terminal tools, editor configuration, Git settings, and app-level customizations in one place so they can be installed consistently across machines.

The repo is designed to live at `$HOME/dotfiles` and uses `linker.sh` to create symbolic links from this checkout into the standard configuration paths used by the system and applications.

## What is included

This setup is meant to cover the day-to-day developer workflow, including:

- Shell configuration for Bash and Zsh
- Git configuration and SSH signing support
- Terminal tooling and prompt setup
- Editor setup for Neovim and Vim
- macOS utility configuration, including Hammerspoon and iTerm2 profiles
- App-specific config for Ghostty, `lsd`, and related tools
- Small helper scripts and machine-local overrides

### Key files and directories

- `.bashrc`, `.bash_profile`, `.profile`, `.aliases`, `.inputrc`, `.shellsetup`
- `.zshrc`, `.zsh/`
- `.gitconfig`, `.gitignore`, `.config/git/allowed_signers`
- `.tmux.conf`, `.vimrc`, `.config/nvim`
- `.config/ghostty`, `.config/lsd`, `.config/ccstatusline`
- `.hammerspoon/`, `iterm2profile/`, `macossetup/`
- `scripts/`, `linker.sh`, `git-ssh-signer`

## How the setup works

The repository assumes a checkout in your home directory:

```bash
$HOME/dotfiles
```

`linker.sh` is the core installer script. It performs several tasks automatically:

- clones or updates `antidote` for zsh plugin management
- creates symlinks from the repo into `$HOME`
- links editor and terminal config directories into their expected locations
- configures Git SSH signer support if the relevant files are present
- safely handles re-runs without clobbering user-created files

This makes the setup idempotent and easy to reapply after reinstalling the system or moving to a new machine.

## Installation

Clone the repository and run the linker:

```bash
git clone https://github.com/makerhaven/dotfiles.git "$HOME/dotfiles"
cd "$HOME/dotfiles"
./linker.sh
```

After installation, reload your shell:

```bash
source ~/.zshrc
```

If you prefer Bash, source the Bash profile instead:

```bash
source ~/.bash_profile
```

## Local machine overrides

The repo supports a machine-specific override file:

```bash
~/.zshrc.local
```

This is useful for environment-specific values such as:

- custom PATH entries
- host-specific aliases
- developer credentials or local tool configuration
- temporary debug settings

These customizations stay out of the shared repository, while the base config remains portable.

## Notes

- This repository is intended for personal, developer-focused use.
- Some configuration is tailored to a macOS workflow.
- The linking script is designed to be safe to re-run and resilient to existing user files.
- Anything that is intentionally machine-specific should live in local override files or be kept outside the tracked repository configuration.

## License

This project does not currently declare a license.
