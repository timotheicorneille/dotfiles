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
    oh-my-zsh.enable = true;
  };
}
