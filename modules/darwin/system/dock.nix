{ home, ... }:

{
  system.defaults.dock = {
    autohide = false;
    show-recents = false;
    showhidden = true; 

    persistent-apps = [
      "/System/Applications/App Store.app"
      "/Applications/Microsoft Edge.app"
      "/Applications/Spotify.app"
      "/Applications/Discord.app"
      "/Applications/ChatGPT.app"
      "/Applications/Notion.app"
      "${home}/Applications/Home Manager Apps/Visual Studio Code.app"
      "${home}/Applications/Home Manager Apps/Ghostty.app"
    ];

    persistent-others = [
      "${home}/Downloads"
    ];

  };
}
