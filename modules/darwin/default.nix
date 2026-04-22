{ pkgs, username, hostname, localHostName, system, ... }:

{
  imports = [
    ./homebrew
  ];

  nixpkgs.hostPlatform = system;
  system.stateVersion = 6;
  system.primaryUser = username;

  users.users.${username}.home = "/Users/valiwis";

  networking.hostName = hostname;
  networking.localHostName = localHostName;

  environment.systemPackages = with pkgs; [
    uv
  ];

  programs.zsh.enable = true;

  system.defaults.dock.autohide = true;
}