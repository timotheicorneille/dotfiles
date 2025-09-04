{ config, pkgs, hyprland, ... }:

{
  imports = [
    ./wm/hyprland.nix
    ./shell/zsh.nix
    ./apps/nvim.nix
    ./apps/neomutt.nix
    ./apps/common.nix
    ./apps/alacritty.nix
    ./apps/waybar.nix
    ./services.nix
  ];

  home.username = "tim";
  home.homeDirectory = "/home/tim";

  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
