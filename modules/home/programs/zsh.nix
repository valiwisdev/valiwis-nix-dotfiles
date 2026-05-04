{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    plugins = [
      git
    ];
  };

  catppuccin.zsh-syntax-highlighting = {
    enable = true;
    flavor = "mocha";
  };
}