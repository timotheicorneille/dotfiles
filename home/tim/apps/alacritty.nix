{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    
    settings = {
      window = {
        opacity = 0.9;
        padding = {
          x = 10;
          y = 10;
        };
        decorations = "None";
      };

      font = {
        normal = {
          family = "JetBrains Mono";
          style = "Regular";
        };
        bold = {
          family = "JetBrains Mono";
          style = "Bold";
        };
        italic = {
          family = "JetBrains Mono";
          style = "Italic";
        };
        size = 12;
      };

      colors = {
        primary = {
          background = "#282a36";
          foreground = "#f8f8f2";
        };
        normal = {
          black = "#000000";
          red = "#ff5555";
          green = "#50fa7b";
          yellow = "#f1fa8c";
          blue = "#bd93f9";
          magenta = "#ff79c6";
          cyan = "#8be9fd";
          white = "#bfbfbf";
        };
        bright = {
          black = "#4d4d4d";
          red = "#ff6e67";
          green = "#5af78e";
          yellow = "#f4f99d";
          blue = "#caa9fa";
          magenta = "#ff92d0";
          cyan = "#9aedfe";
          white = "#e6e6e6";
        };
      };

      cursor = {
        style = "Block";
        unfocused_hollow = true;
      };

      terminal = {
        shell = {
          program = "${pkgs.zsh}/bin/zsh";  # ou "${pkgs.bash}/bin/bash"
        };
      };
    };
  };

  home.packages = with pkgs; [
    jetbrains-mono
  ];
}
