{ pkgs, username, home, ... }:

{
  imports = [
    ./programs/git.nix
    ./programs/ghostty.nix
    ./programs/zsh.nix
    ./programs/fzf.nix
    ./programs/zoxide.nix
    ./programs/starship.nix
    ./programs/tmux.nix
    ./programs/mise.nix
  ];


  home.username = username;
  home.stateVersion = "26.05";
  home.homeDirectory = home;
  home.sessionPath = [ "${home}/.local/share/pnpm/bin" ];
  home.packages = with pkgs; [];
  programs.home-manager.enable = true;
  xdg.enable = true;
}
