{
  homebrew = {
    enable = true;

    brews = import ./brews.nix;
    casks = import ./casks.nix;
    masApps = import ./masApps.nix;

    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}