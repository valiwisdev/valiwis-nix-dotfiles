{ pkgs, username, hostname, localHostName, system, ... }:

{
  imports = [
    ./homebrew
  ];

  nix.enable = false; 

  nixpkgs.hostPlatform = system;
  system.stateVersion = 6;
  system.primaryUser = username;

  networking.hostName = hostname;
  networking.localHostName = localHostName;

  environment.systemPackages = with pkgs; [
    uv
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [nix-vscode-extensions.overlays.default];

  programs.zsh.enable = true;

  system.defaults.dock.autohide = true;
}