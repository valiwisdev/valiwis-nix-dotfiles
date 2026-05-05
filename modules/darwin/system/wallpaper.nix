{ config, pkgs, lib, ... }:

let
  cfg = config.my.wallpaper;

  wallpapersDir = ./wallpapers;

  wallpaperFiles =
    builtins.attrNames
      (lib.filterAttrs
        (name: type:
          type == "regular"
          && (
            lib.hasSuffix ".png" name
            || lib.hasSuffix ".jpg" name
            || lib.hasSuffix ".jpeg" name
            || lib.hasSuffix ".heic" name
            || lib.hasSuffix ".webp" name
          )
        )
        (builtins.readDir wallpapersDir));

  selectedWallpaper = "${wallpapersDir}/${cfg.name}";

  setWallpaper = pkgs.writeShellScriptBin "set-wallpaper" ''
    set -euo pipefail

    /usr/bin/osascript -e 'tell application "Finder" to set desktop picture to POSIX file "${selectedWallpaper}"'
  '';
in
{
  options.my.wallpaper = {
    name = lib.mkOption {
      type = lib.types.enum wallpaperFiles;
      default = "catppuccintotoro.png";
      description = "Wallpaper file to use from the wallpapers folder.";
    };
  };

  config = {
    environment.systemPackages = [
      setWallpaper
    ];

    system.activationScripts.setWallpaper.text = ''
      echo "Setting wallpaper to ${cfg.name}..." >&2

      user="${config.system.primaryUser}"
      uid="$(id -u "$user")"

      launchctl asuser "$uid" sudo -u "$user" \
        ${setWallpaper}/bin/set-wallpaper || true
    '';
  };
}