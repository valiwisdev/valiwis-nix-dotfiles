# Valiwis Nix Dotfiles



Declarative macOS setup powered by `nix-darwin`, `home-manager`, and `nix-homebrew`.

![nix](https://img.shields.io/badge/Nix-Flakes-5277C3?style=for-the-badge&logo=nixos&logoColor=white)
![platform](https://img.shields.io/badge/Platform-macOS-black?style=for-the-badge&logo=apple)

## Overview


| Area | What it shapes | Where it lives |
| --- | --- | --- |
| System | Host naming, Dock layout, fonts, wallpaper automation, and Homebrew | [modules/darwin/system/default.nix](modules/darwin/system/default.nix) |
| Shell | Zsh, `fzf`, `zoxide`, and Starship | [modules/home/programs/zsh.nix](modules/home/programs/zsh.nix) |
| Editor | VS Code extensions and editor preferences | [modules/home/programs/vscode.nix](modules/home/programs/vscode.nix) |
| Apps | Desktop app defaults, Ghostty, and Git identity | [modules/home/programs/ghostty.nix](modules/home/programs/ghostty.nix) |

---

## Quick Start

```bash
xcode-select --install
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
git clone https://github.com/valiwisdev/valiwis-nix-dotfiles.git
cd valiwis-nix-dotfiles
nix run github:nix-darwin/nix-darwin-25.11#darwin-rebuild -- switch --flake .#valiwis
```

---

## Fresh Install (Step-by-Step)

### 1) Install Xcode Command Line Tools

```bash
xcode-select --install
```

### 2) Install Nix (Determinate Systems)

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### 3) Clone this repository

```bash
git clone https://github.com/valiwisdev/valiwis-nix-dotfiles.git
cd valiwis-nix-dotfiles
```

### 4) Bootstrap your system

```bash
nix run github:nix-darwin/nix-darwin-25.11#darwin-rebuild -- switch --flake .#valiwis
```

---

## Daily Workflow


| Task | Command |
| --- | --- |
| Apply local configuration changes | `darwin-rebuild switch --flake .#valiwis` |
| Update flake inputs and apply | `nix flake update` then `darwin-rebuild switch --flake .#valiwis` |
| Inspect flake outputs | `nix flake show` |

---

## Settings at a Glance

| Setting | Value | Defined in |
| --- | --- | --- |
| Hostname | `valiwis` | [flake.nix](flake.nix) |
| LocalHostName | `valiwis-mac-mini` | [flake.nix](flake.nix) |
| Username | `valiwis` | [flake.nix](flake.nix) |
| Platform | `aarch64-darwin` | [flake.nix](flake.nix) |

## Settings

<details open>
<summary>System Settings</summary>

- `nix-darwin` system configuration with `allowUnfree = true`, so proprietary packages can be installed. See [modules/darwin/system/default.nix](modules/darwin/system/default.nix).
- `nix-vscode-extensions` overlay, which makes VS Code Marketplace packages available in Nix. See [flake.nix](flake.nix).
- Dock preferences that keep the workspace tidy by disabling recents, showing hidden files, and pinning a curated set of apps plus Downloads. See [modules/darwin/system/dock.nix](modules/darwin/system/dock.nix).
- `JetBrains Mono Nerd Font` for consistent terminal and editor typography. See [modules/darwin/system/fonts.nix](modules/darwin/system/fonts.nix).
- Automatic wallpaper setup during activation, so the desktop background is refreshed every time the system switches. See [modules/darwin/system/wallpaper.nix](modules/darwin/system/wallpaper.nix).
- `nix-homebrew` integration with cleanup, auto-update, and upgrade behavior enabled. See [flake.nix](flake.nix).
- Brew packages for day-to-day CLI work: `wget`, `gh`, `nvm`, `fastfetch`, and `tmux`. See [modules/darwin/homebrew/brews.nix](modules/darwin/homebrew/brews.nix).
- Cask apps for desktop usage: `docker-desktop`, `spotify`, `discord`, `microsoft-edge`, `chatgpt`, `notion`, `ghostty`, `raycast`, `obs`, `wireshark-app`, and `kiro-cli`. See [modules/darwin/homebrew/casks.nix](modules/darwin/homebrew/casks.nix).

</details>

<details open>
<summary>Home Manager Settings</summary>

- Git is configured with the author identity `valiwisdev`. See [modules/home/programs/git.nix](modules/home/programs/git.nix).
- Ghostty is configured with JetBrains Mono Nerd Font, a larger font size, translucent blurred window styling, and the Catppuccin Mocha theme. See [modules/home/programs/ghostty.nix](modules/home/programs/ghostty.nix).
- VS Code uses a curated extension set and editor preferences such as Catppuccin Mocha, autosave, larger fonts, and telemetry disabled. See [modules/home/programs/vscode.nix](modules/home/programs/vscode.nix).
- Zsh is set up with syntax highlighting, Oh My Zsh plugins, and environment bootstrap for NVM and the Homebrew PATH. See [modules/home/programs/zsh.nix](modules/home/programs/zsh.nix).
- `fzf`, `zoxide`, and Starship are integrated into Zsh to improve fuzzy searching, fast directory jumps, and prompt readability. See [modules/home/default.nix](modules/home/default.nix).
- `home-manager` and `xdg` are enabled so per-user configuration and XDG-style app state are managed declaratively. See [modules/home/default.nix](modules/home/default.nix).

</details>

