{ pkgs, ... }:

{
  home.packages = with pkgs; [
    htop
    fzf
    tldr
    gh
  ];

}
