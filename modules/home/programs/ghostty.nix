{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;
    enableZshIntegration = true;
    
    settings = {
      theme = "Catppuccin Mocha";
      font-size = 18;
    };

  };
}
