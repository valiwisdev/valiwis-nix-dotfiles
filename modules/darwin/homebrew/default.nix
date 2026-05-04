{
  homebrew = {
    enable = true;

    brews = import ./brews.nix;
    casks = import ./casks.nix;

    onActivation.cleanup = "zap";
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}