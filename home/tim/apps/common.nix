{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    htop
    fzf
    alacritty
    firefox
  ];

  programs.zsh = {
    enable = true;
  };
}
