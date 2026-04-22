{ pkgs, username, ... }:

{
  imports = [
    ./git.nix
  ];

  home.username = username;
  home.stateVersion = "25.11";

  home.packages = with pkgs; [];

  programs.home-manager.enable = true;
  programs.zsh.enable = true;
}