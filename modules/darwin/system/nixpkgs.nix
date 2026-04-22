{ inputs, system, ... }:

{
	nixpkgs.hostPlatform = system;
	nixpkgs.config.allowUnfree = true;
	nixpkgs.overlays = [ inputs.nix-vscode-extensions.overlays.default ];
}
