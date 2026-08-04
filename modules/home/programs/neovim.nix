{ config, lib, pkgs, ... }:

let
  nvimSource =
    "/Users/valiwis/valiwis-nix-dotfiles/modules/home/programs/config/nvim";

  nvimTarget =
    "${config.home.homeDirectory}/.config/nvim";
in
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

  home.activation.installNvimConfig =
    lib.hm.dag.entryAfter [ "writeBoundary" ] ''
      run mkdir -p "${nvimTarget}"

      if [ -d "${nvimSource}" ]; then
        run ${pkgs.rsync}/bin/rsync -a \
          --exclude=".git" \
          "${nvimSource}/" \
          "${nvimTarget}/"
      else
        echo "Neovim source directory does not exist: ${nvimSource}"
        exit 1
      fi
    '';
}