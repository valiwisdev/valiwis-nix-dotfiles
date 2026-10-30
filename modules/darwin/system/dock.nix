{ home, ... }:

{
  system.defaults.dock = {
    autohide = true;
    show-recents = false;
    showhidden = true; 

    persistent-apps = [
      "/System/Applications/App Store.app"
      "/Applications/Microsoft Edge.app"
      "/Applications/Spotify.app"
      "/Applications/Discord.app"
      "/Applications/Notion.app"
      "/Applications/OBS.app"
      "/Applications/Visual Studio Code.app"
      "/Applications/OrbStack.app"
      "/Applications/Ghostty.app"
      "/Applications/Rustdesk.app"
      "/System/Applications/System Settings.app"
    ];

    persistent-others = [
      "${home}/Downloads"
    ];

  };
}
