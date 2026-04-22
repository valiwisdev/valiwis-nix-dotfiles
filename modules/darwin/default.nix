{ pkgs, inputs, username, hostname, localHostName, system, ... }:

{
  imports = [
    ./homebrew
    ./system
  ];

  nix.enable = false; 
}