{ pkgs, username, ... }:

{
	imports = [
		./dock.nix
		./environment.nix
		./nixpkgs.nix
	];

	system.stateVersion = 6;
	system.primaryUser = username;

}
