{ pkgs, username, ... }:

{
  imports = [
    ./git.nix
  ];

  home.username = username;
  home.homeDirectory = "/Users/${username}";
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    ripgrep
    fd
    jq
  ];

  programs.home-manager.enable = true;
  programs.zsh.enable = true;
}