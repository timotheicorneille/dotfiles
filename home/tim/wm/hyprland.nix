{ pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = ",preferred,auto,1";
      exec-once = [
        "waybar"
	"dunst"
	"alacritty"
      ];
    };
  };

  programs.waybar.enable = true;
  services.dunst.enable = true;
}
