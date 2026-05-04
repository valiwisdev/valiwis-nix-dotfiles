{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
      ];
    };
  };

  catppuccin.zsh-syntax-highlighting = {
    enable = true;
    flavor = "mocha";
  };
}