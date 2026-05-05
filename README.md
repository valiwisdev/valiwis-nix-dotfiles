# Valiwis Nix Dotfiles

Declarative macOS setup powered by `nix-darwin`, `home-manager`, and `nix-homebrew`.

## Overview

- **System**: macOS-level configuration handled by `nix-darwin`, including host naming, Dock layout, fonts, wallpaper automation, and Homebrew.
- **Shell**: terminal and shell workflow improvements through Zsh, `fzf`, `zoxide`, and Starship.
- **Editor**: VS Code setup with curated extensions and editor preferences.
- **Apps**: desktop app defaults, Ghostty configuration, and Git identity for commits.

![nix](https://img.shields.io/badge/Nix-Flakes-5277C3?style=for-the-badge&logo=nixos&logoColor=white)
![platform](https://img.shields.io/badge/Platform-macOS-black?style=for-the-badge&logo=apple)


---

## Quick Start

```sh
xcode-select --install
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
git clone https://github.com/valiwisdev/valiwis-nix-dotfiles.git
cd valiwis-nix-dotfiles
nix run github:nix-darwin/nix-darwin-25.11#darwin-rebuild -- switch --flake .#valiwis
```

---

## Fresh Install (Step-by-Step)

### 1) Install Xcode Command Line Tools

```sh
xcode-select --install
```

### 2) Install Nix (Determinate Systems)

```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### 3) Clone this repository

```sh
git clone https://github.com/valiwisdev/valiwis-nix-dotfiles.git
cd valiwis-nix-dotfiles
```

### 4) Bootstrap your system

```sh
nix run github:nix-darwin/nix-darwin-25.11#darwin-rebuild -- switch --flake .#valiwis
```

---

## Daily Workflow

### Apply local configuration changes

```sh
darwin-rebuild switch --flake .#valiwis
```

### Update flake inputs and apply

```sh
nix flake update
darwin-rebuild switch --flake .#valiwis
```

### Inspect flake outputs

```sh
nix flake show
```

---

## Configuration Notes

- **Hostname**: `valiwis` is the machine name used by the Darwin configuration. Defined in [flake.nix](flake.nix).
- **LocalHostName**: `valiwis-mac-mini` is the local network name used by macOS. Defined in [flake.nix](flake.nix).
- **Username**: `valiwis` is the primary user managed by `home-manager`. Defined in [flake.nix](flake.nix).
- **Platform**: `aarch64-darwin` targets Apple Silicon macOS machines. Defined in [flake.nix](flake.nix).

## Included Settings

### System Settings

- `nix-darwin` system configuration with `allowUnfree = true`, so proprietary packages can be installed. See [modules/darwin/system/default.nix](modules/darwin/system/default.nix).
- `nix-vscode-extensions` overlay, which makes VS Code Marketplace packages available in Nix. See [flake.nix](flake.nix).
- Dock preferences that disable recents, show hidden files, and pin a curated set of apps plus Downloads. See [modules/darwin/system/dock.nix](modules/darwin/system/dock.nix).
- `JetBrains Mono Nerd Font` for consistent terminal and editor typography. See [modules/darwin/system/fonts.nix](modules/darwin/system/fonts.nix).
- Automatic wallpaper setup during activation, so the desktop background is applied every time the system switches. See [modules/darwin/system/wallpaper.nix](modules/darwin/system/wallpaper.nix).
- `nix-homebrew` integration with cleanup, auto-update, and upgrade behavior enabled. See [flake.nix](flake.nix).
- Brew packages for day-to-day CLI work: `wget`, `gh`, `nvm`, `fastfetch`, and `tmux`. See [modules/darwin/homebrew/brews.nix](modules/darwin/homebrew/brews.nix).
- Cask apps for desktop usage: `docker-desktop`, `spotify`, `discord`, `microsoft-edge`, `chatgpt`, `notion`, `ghostty`, `raycast`, `obs`, `wireshark-app`, and `kiro-cli`. See [modules/darwin/homebrew/casks.nix](modules/darwin/homebrew/casks.nix).

### Home Manager Settings

- Git is configured with the author identity `valiwisdev`, so commits use a consistent name without documenting a personal email address here. See [modules/home/programs/git.nix](modules/home/programs/git.nix).
- Ghostty is configured with JetBrains Mono Nerd Font, a larger font size, translucent blurred window styling, and the Catppuccin Mocha theme. See [modules/home/programs/ghostty.nix](modules/home/programs/ghostty.nix).
- VS Code uses a curated extension set and editor preferences such as Catppuccin Mocha, autosave, larger fonts, and telemetry disabled. See [modules/home/programs/vscode.nix](modules/home/programs/vscode.nix).
- Zsh is set up with syntax highlighting, Oh My Zsh plugins, and environment bootstrap for NVM and the Homebrew PATH. See [modules/home/programs/zsh.nix](modules/home/programs/zsh.nix).
- `fzf`, `zoxide`, and Starship are integrated into Zsh to improve fuzzy searching, fast directory jumps, and prompt readability. See [modules/home/default.nix](modules/home/default.nix).
- `home-manager` and `xdg` are enabled so per-user configuration and XDG-style app state are managed declaratively. See [modules/home/default.nix](modules/home/default.nix).

