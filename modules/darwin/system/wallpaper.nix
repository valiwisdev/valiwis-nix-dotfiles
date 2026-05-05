{ config, pkgs, ... }:

let
  wallpaper = ../../../wallpapers/catcolors.png;

  setWallpaper = pkgs.writeShellScriptBin "set-wallpaper" ''
    set -euo pipefail

    /usr/bin/osascript -e 'tell application "Finder" to set desktop picture to POSIX file "${wallpaper}"'
  '';
in
{
  environment.systemPackages = [
    setWallpaper
  ];

  system.activationScripts.setWallpaper.text = ''
    echo "Setting wallpaper..." >&2

    user="${config.system.primaryUser}"
    uid="$(id -u "$user")"

    launchctl asuser "$uid" sudo -u "$user" \
      ${setWallpaper}/bin/set-wallpaper || true
  '';
}