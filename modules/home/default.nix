{ pkgs, username, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/ghostty.nix
    ./programs/vscode.nix
    ./programs/zsh.nix
  ];

  catppuccin.enable = true;
  catppuccin.flavor = "mocha";

  home.username = username;
  home.stateVersion = "25.11";
  home.packages = with pkgs; [];
  programs.home-manager.enable = true;

}