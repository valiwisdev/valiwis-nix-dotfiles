{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package = null;
    enableZshIntegration = true;
    
    settings = {
      font-size = 20;
      font-thicken = true;
      font-family = "JetBrainsMono Nerd Font";
      window-padding-x = 8;
      window-padding-y = 4;
      background-opacity = 0.96;
      background-blur = 10;
      unfocused-split-opacity = 0.6;
      window-padding-balance = true;
    };
  };

  catppuccin.ghostty = {
    enable = true;
    flavor = "mocha";
  };
}
