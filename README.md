# Valiwis Nix Dotfiles

Declarative macOS setup powered by Determinate Nix, `nix-darwin`, `home-manager`, and `nix-homebrew`.

![nix](https://img.shields.io/badge/Nix-Flakes-5277C3?style=for-the-badge&logo=nixos&logoColor=white)
![platform](https://img.shields.io/badge/Platform-macOS-black?style=for-the-badge&logo=apple)


---

## Quick Start

```sh
xcode-select --install
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
git clone https://github.com/<your-username>/nix-dotfiles.git
cd nix-dotfiles
nix run https://flakehub.com/f/nix-darwin/nix-darwin/0#darwin-rebuild -- switch --flake .#valiwis
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
git clone https://github.com/<your-username>/nix-dotfiles.git
cd nix-dotfiles
```

### 4) Bootstrap your system

```sh
nix run https://flakehub.com/f/nix-darwin/nix-darwin/0#darwin-rebuild -- switch --flake .#valiwis
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

| Setting | Current Value | Where |
| --- | --- | --- |
| Hostname | `valiwis` | `flake.nix` |
| LocalHostName | `valiwis-mac-mini` | `flake.nix` |
| Username | `valiwis` | `flake.nix` |
| Platform | `aarch64-darwin` | `flake.nix` |

