{ pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    fzf
    tldr
    gh

    # hyprland stuff
    swaybg
    waybar
    wofi
    grim
    slurp
    wl-clipboard

    # Fonts pour les emojis
    noto-fonts-emoji
    font-awesome
    material-design-icons
    discord
    firefox
  ];

}
