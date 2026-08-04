{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      gcc
      gnumake
      curl
      ripgrep
      fd
      tree-sitter
      lua-language-server
      stylua
      nil
      nixfmt-rfc-style
    ];
  };

  catppuccin.nvim.enable = false;

  xdg.configFile."nvim" = {
    source = ./config/nvim;
    recursive = true;
    force = true;
  };
}