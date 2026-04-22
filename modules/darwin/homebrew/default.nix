{
  homebrew = {
    enable = true;

    brews = import ./brews.nix;
    casks = import ./casks.nix;
    masApps = import ./masApps.nix;

    onActivation.cleanup = "uninstall";
    onActivation.autoUpdate = false;
    onActivation.upgrade = false;
  };
}