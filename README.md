# Dotfiles

A personal set of shell, editor, terminal, and macOS configuration files for a fast and consistent local development environment.

This repository is designed to live at `$HOME/dotfiles` and uses `linker.sh` to create symlinks into the standard config locations on your machine.

## Included configuration

- Shell setup: `.bashrc`, `.bash_profile`, `.profile`, `.aliases`, `.inputrc`, `.shellsetup`
- Zsh setup: `.zshrc`, `.zsh/`
- Git: `.gitconfig`, `.gitignore`, `.config/git/allowed_signers`
- Terminal and editor config: `.tmux.conf`, `.vimrc`, `.config/nvim`, `.config/lsd`, `.config/ghostty`, `.config/ccstatusline`
- macOS and app config: `.hammerspoon/`, `iterm2profile/`, `macossetup/`
- Utilities: `scripts/`, `linker.sh`, `git-ssh-signer`

## How it works

The repo assumes the checkout lives at:

```bash
$HOME/dotfiles
```

`linker.sh` handles the setup by:

- installing/updating `antidote` for zsh plugins
- creating symlinks from the repo into your home directory
- linking app configs such as Ghostty, nvim, and Hammerspoon
- setting Git SSH signer configuration when available

## Install

```bash
git clone https://github.com/makerhaven/dotfiles.git "$HOME/dotfiles"
cd "$HOME/dotfiles"
./linker.sh
```

Then open a new shell or reload your config:

```bash
source ~/.zshrc
```

If you use Bash instead of Zsh, you can also source the relevant files manually:

```bash
source ~/.bash_profile
```

## Local overrides

A per-machine overlay is supported through:

```bash
~/.zshrc.local
```

This allows machine-specific aliases, exports, or shell customizations without polluting the shared repo config.

## Notes

- The repo is intended for personal use and machine-specific customization.
- Some configuration is tuned for macOS workflows.
- The loader script is intentionally idempotent and safe to re-run.

## License

This project does not currently declare a license.
