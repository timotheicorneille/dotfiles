{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
      telescope-nvim
      nvim-treesitter
      gruvbox-nvim
    ];
    extraConfig = ''
      set number
      set relativenumber
      colorscheme gruvbox
    '';
  };
}
