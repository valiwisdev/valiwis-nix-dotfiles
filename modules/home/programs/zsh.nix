{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "docker"
        "docker-compose"
        "python"
        "pip"
        "node"
        "npm"
        "yarn"
        "vscode"
      ];
    };

    initContent = ''
      export HISTTIMEFORMAT="[%F %T] "
      setopt HIST_FIND_NO_DUPS
      setopt HIST_IGNORE_ALL_DUPS
      export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
      export NVM_DIR="$HOME/.nvm"
      source $(brew --prefix nvm)/nvm.sh
    '';
  };

  catppuccin.zsh-syntax-highlighting = {
    enable = true;
    flavor = "mocha";
  };
}