{
  pkgs,
  username,
  hostname,
  localHostName,
  system,
  inputs,
  ...
}:

{
  imports = [
    ./dock.nix
    ./environment.nix
    ./fonts.nix
    ./programs.nix
    ./wallpaper.nix
  ];

  system.primaryUser = username;
  networking.hostName = hostname;
  networking.localHostName = localHostName;
  nixpkgs.hostPlatform = system;
  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [
    inputs.nix-vscode-extensions.overlays.default
  ];

}
