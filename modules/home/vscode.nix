{ pkgs, ... }:

{
    programs.vscode = {
        enable = true;
        profiles.default = {
            extensions = with pkgs.vscode-marketplace; [
                catppuccin.catppuccin-vsc
            ];
        };
    };
}