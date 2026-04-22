{ username, ... }:

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
      "/Users/${username}/Applications/Home Manager Apps/Visual Studio Code.app"
    ];

    persistent-others = [
      "/${username}/Downloads"
    ];

  };
}
