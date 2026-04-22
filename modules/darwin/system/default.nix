{ pkgs, username, hostname, localHostName, system, inputs, ... }:

{
	imports = [
		./dock.nix
		./environment.nix
		./fonts.nix
		./programs.nix
	];

	system.stateVersion = 6;
	system.primaryUser = username;
  networking.hostName = hostname;
	networking.localHostName = localHostName;
  nixpkgs.hostPlatform = system;
	nixpkgs.config.allowUnfree = true;
	nixpkgs.overlays = [
		inputs.nix-vscode-extensions.overlays.default
		(final: prev: {
			python313Packages = prev.python313Packages.overrideScope (pyFinal: pyPrev: {
				ffmpeg-python = pyPrev.ffmpeg-python.overrideAttrs (_: {
					doCheck = false;
				});
			});
		})
	];

}
