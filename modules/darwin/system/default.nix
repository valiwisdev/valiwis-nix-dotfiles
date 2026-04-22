{ pkgs, username, ... }:

{
	imports = [
		./dock.nix
		./environment.nix
		./networking.nix
		./nixpkgs.nix
		./programs.nix
	];

	system.stateVersion = 6;
	system.primaryUser = username;

}
