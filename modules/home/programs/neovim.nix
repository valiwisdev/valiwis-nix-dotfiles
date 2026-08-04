{ config, pkgs, ... }:

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

  xdg.configFile."nvim".source =
    config.lib.file.mkOutOfStoreSymlink
     "/Users/valiwis/valiwis-nix-dotfiles/modules/home/config/nvim";
}