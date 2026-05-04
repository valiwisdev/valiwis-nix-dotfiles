{ home, ... }:

{
  system.defaults.dock = {
    autohide = false;
    show-recents = false;
    showhidden = true; 

    persistent-apps = [
      "/System/Applications/App Store.app"
      "/System/Applications/System Settings.app"
      "/Applications/Microsoft Edge.app"
      "/Applications/Microsoft Word.app"
      "/Applications/Microsoft Excel.app"
      "/Applications/Canva.app"
      "/Applications/Spotify.app"
      "/Applications/Discord.app"
      "/Applications/WhatsApp.app"
      "/Applications/ChatGPT.app"
      "/Applications/Notion.app"
      "/Applications/OBS.app"
      "${home}/Applications/Home Manager Apps/Visual Studio Code.app"
      "/Applications/Docker.app"
      "/Applications/Ghostty.app"
      "/Applications/Kiro CLI.app"
    ];

    persistent-others = [
      "${home}/Downloads"
    ];

  };
}
