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

  users.users.${username}.home = "/Users/valiwis";
  system.primaryUser = username;

  environment.systemPackages = with pkgs; [
    git
    vim
  ];

  programs.zsh.enable = true;

  system.defaults.dock.autohide = true;
}