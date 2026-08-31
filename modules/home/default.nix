{ pkgs, username, home, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/ghostty.nix
    ./programs/vscode.nix
    ./programs/zsh.nix
    ./programs/fzf.nix
    ./programs/zoxide.nix
    ./programs/starship.nix
    ./programs/tmux.nix
    ./programs/neovim.nix
    ./programs/mise.nix
    ./programs/android.nix
  ];


  home.username = username;
  home.stateVersion = "26.05";
  home.homeDirectory = home;
  home.packages = with pkgs; [];
  programs.home-manager.enable = true;
  xdg.enable = true;
}