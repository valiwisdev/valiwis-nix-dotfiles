{
  homebrew = {
    enable = true;

    brews = import ./brews.nix;
    casks = import ./casks.nix;
    masApps = import ./mas.nix;

    onActivation.cleanup = "zap";
    onActivation.autoUpdate = false;
    onActivation.upgrade = true;
  };
}