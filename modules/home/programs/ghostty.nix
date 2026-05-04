{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package = null;
    enableZshIntegration = true;
    
    settings = {
      font-size = 18;
    };
  };

  catppuccin.ghostty = {
    enable = true;
    flavor = "mocha";
  };
}
