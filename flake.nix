{
  description = "Valiwis' Nix dotfiles for macOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-25.11-darwin";

    determinate.url = "https://flakehub.com/f/DeterminateSystems/determinate/3";
    determinate.inputs.nixpkgs.follows = "nixpkgs";

    nix-darwin.url = "https://flakehub.com/f/nix-darwin/nix-darwin/0";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager/release-25.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nix-homebrew.url = "github:zhaofengli/nix-homebrew";

    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };

    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };
  };

  outputs = inputs@{
    determinate,
    nix-darwin,
    home-manager,
    nix-homebrew,
    homebrew-core,
    homebrew-cask,
    ...
  }:
  let
    system = "aarch64-darwin"; 
    username = "valiwis";
    hostname = "valiwis";
    localHostName = "valiwis-mac-mini";
    home = "/Users/${username}";
  in {
    darwinConfigurations.${hostname} = nix-darwin.lib.darwinSystem {
      inherit system;
      specialArgs = {
        inherit inputs system username hostname localHostName;
      };

      modules = [
        determinate.darwinModules.default
        {
          determinateNix.enable = true;
        }

        ./modules/darwin

        nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            enable = true;
            user = username;
            enableRosetta = true; 
            autoMigrate = true;
            taps = {
              "homebrew/homebrew-core" = homebrew-core;
              "homebrew/homebrew-cask" = homebrew-cask;
            };

            mutableTaps = false;
          };
        }

        ({ config, ... }: {
          homebrew.taps = builtins.attrNames config.nix-homebrew.taps;
        })

        home-manager.darwinModules.home-manager
        {
          users.users.${username}.home = home;
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = { inherit username; };
          home-manager.users.${username} = import ./modules/home;
        }
      ];
    };
  };
}