{ pkgs, username, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/ghostty.nix
    ./programs/vscode.nix
    ./programs/zsh.nix
  ];

  home.username = username;
  home.stateVersion = "25.11";
  home.packages = with pkgs; [
    ghostty-bin
  ];
  programs.home-manager.enable = true;

}