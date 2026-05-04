{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		uv
		zoxide
		starship
		nixfmt-rfc-style
		fzf
	];
}
