{
  programs.mise = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;
    globalConfig = {
      tools = {
        node = "lts";
        python = "3.14";
      };
    };
  };
}