{ pkgs, unstablePkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = unstablePkgs.vscode;
    profiles.default = {
      extensions = with pkgs.vscode-marketplace; [
      ];

      userSettings = {
      ;
    };
  };
}
