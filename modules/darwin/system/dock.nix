{ home, ... }:

{
  system.defaults.dock = {
    autohide = false;
    show-recents = false;
    showhidden = true; 

    persistent-apps = [
      "/System/Applications/App Store.app"
      "/Applications/Microsoft Edge.app"
      "/Applications/Microsoft Word.app"
      "/Applications/Microsoft Excel.app"
      "/Applications/Canva.app"
      "/Applications/Figma.app"
      "/Applications/Spotify.app"
      "/Applications/Discord.app"
      "/Applications/WhatsApp.app"
      "/Applications/Notion.app"
      "/Applications/OBS.app"
      "/Applications/Visual Studio Code.app"
      "/Applications/OrbStack.app"
      "/Applications/Ghostty.app"
      "/System/Applications/System Settings.app"
    ];

    persistent-others = [
      "${home}/Downloads"
    ];

  };
}
