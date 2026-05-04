{ pkgs, username, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/ghostty.nix
    ./programs/vscode.nix
    ./programs/zsh.nix
    ./programs/fzf.nix
    ./programs/zoxide.nix
    ./programs/starship.nix
  ];


  home.username = username;
  home.stateVersion = "25.11";
  home.packages = with pkgs; [];
  programs.home-manager.enable = true;
  xdg.enable = true;
}