{ pkgs }:

let
  wallpaper = ./wallpapers/catcolors.png;
in
pkgs.writeShellScriptBin "set-wallpaper" ''
  set -e

  /usr/bin/osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"${wallpaper}\""
''