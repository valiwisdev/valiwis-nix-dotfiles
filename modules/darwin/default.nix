{ pkgs, username, hostname, localHostName, system, ... }:

{
  imports = [
    ./homebrew
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.hostPlatform = system;
  system.stateVersion = 6;
  system.primaryUser = username;

  networking.hostName = hostname;
  networking.localHostName = localHostName;

  environment.systemPackages = with pkgs; [
    git
    vim
  ];

  programs.zsh.enable = true;

  system.defaults.dock.autohide = true;
}