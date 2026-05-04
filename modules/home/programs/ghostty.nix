{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package = null;
    enableZshIntegration = true;
    
    settings = {
      theme = "Catppuccin Mocha";
      font-size = 18;
    };

  };
}
