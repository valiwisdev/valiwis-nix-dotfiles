{ pkgs, inputs, username, hostname, localHostName, system, ... }:

{
  imports = [
    ./homebrew
    ./system
  ];

  nix.enable = false; 
  networking.hostName = hostname;
  networking.localHostName = localHostName;
  programs.zsh.enable = true;
}