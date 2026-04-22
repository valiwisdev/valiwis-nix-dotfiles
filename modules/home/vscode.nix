{
    programs.vscode = {
        enable = true;
        profiles.default = {
            extensions = with with pkgs.vscode-marketplace; [
                catppuccin.catppuccin-vsc
            ];
        };
    };
}