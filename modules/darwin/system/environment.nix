{ pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		uv
    ffmpeg
	];
}
