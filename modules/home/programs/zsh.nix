{
  programs.zsh = {
    enable = true;

    syntaxHighlighting = {
      enable = true;
      highlighters = [ "main" "cursor" ];
      styles = {
        comment = "fg=#585b70";

        alias = "fg=#a6e3a1";
        "suffix-alias" = "fg=#a6e3a1";
        "global-alias" = "fg=#a6e3a1";
        function = "fg=#a6e3a1";
        command = "fg=#a6e3a1";
        precommand = "fg=#a6e3a1,italic";
        autodirectory = "fg=#fab387,italic";
        "single-hyphen-option" = "fg=#fab387";
        "double-hyphen-option" = "fg=#fab387";
        "back-quoted-argument" = "fg=#cba6f7";

        builtin = "fg=#a6e3a1";
        "reserved-word" = "fg=#a6e3a1";
        "hashed-command" = "fg=#a6e3a1";

        commandseparator = "fg=#f38ba8";
        "command-substitution-delimiter" = "fg=#cdd6f4";
        "command-substitution-delimiter-unquoted" = "fg=#cdd6f4";
        "process-substitution-delimiter" = "fg=#cdd6f4";
        "back-quoted-argument-delimiter" = "fg=#f38ba8";
        "back-double-quoted-argument" = "fg=#f38ba8";
        "back-dollar-quoted-argument" = "fg=#f38ba8";

        "command-substitution-quoted" = "fg=#f9e2af";
        "command-substitution-delimiter-quoted" = "fg=#f9e2af";
        "single-quoted-argument" = "fg=#f9e2af";
        "single-quoted-argument-unclosed" = "fg=#eba0ac";
        "double-quoted-argument" = "fg=#f9e2af";
        "double-quoted-argument-unclosed" = "fg=#eba0ac";
        "rc-quote" = "fg=#f9e2af";

        "dollar-quoted-argument" = "fg=#cdd6f4";
        "dollar-quoted-argument-unclosed" = "fg=#eba0ac";
        "dollar-double-quoted-argument" = "fg=#cdd6f4";
        assign = "fg=#cdd6f4";
        "named-fd" = "fg=#cdd6f4";
        "numeric-fd" = "fg=#cdd6f4";

        "unknown-token" = "fg=#eba0ac";
        path = "fg=#cdd6f4,underline";
        path_pathseparator = "fg=#f38ba8,underline";
        path_prefix = "fg=#cdd6f4,underline";
        path_prefix_pathseparator = "fg=#f38ba8,underline";
        globbing = "fg=#cdd6f4";
        "history-expansion" = "fg=#cba6f7";
        "back-quoted-argument-unclosed" = "fg=#eba0ac";
        redirection = "fg=#cdd6f4";
        arg0 = "fg=#cdd6f4";
        default = "fg=#cdd6f4";
        cursor = "fg=#cdd6f4";
      };
    };
  };
}