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

  xdg.configFile."nvim/init.lua".source =
    ./config/nvim/init.lua;

  xdg.configFile."nvim/lua".source =
    ./config/nvim/lua;

  xdg.configFile."nvim/lazyvim.json".source =
    ./config/nvim/lazyvim.json;
}