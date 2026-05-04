{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package = null;
    enableZshIntegration = true;
    
    settings = {
      font-size = 18;
      font-family = JetBrainsMonoNerdFont;
      font-thicken = true;
      macos-titlebar-style = tabs;
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
