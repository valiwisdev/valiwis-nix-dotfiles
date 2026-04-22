{ home, ... }:

{
  system.defaults.dock = {
    autohide = true;
    show-recents = false;
    showhidden = true; 

    persistent-apps = [
      "/Applications/Microsoft Edge.app"
      "/Applications/Spotify.app"
      "/Applications/Discord.app"
      "/Applications/ChatGPT.app"
      "/Applications/Notion.app"
      "${home}/Applications/Home Manager Apps/Visual Studio Code.app"
      "/Applications/Ghostty.app"
    ];

    persistent-others = [
      "${home}/Downloads"
    ];

  };
}
