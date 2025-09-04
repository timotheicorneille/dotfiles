{ pkgs, ... }:

{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        
        modules-left = ["hyprland/workspaces"];
        modules-center = ["clock"];
        modules-right = ["pulseaudio" "network" "battery"];
        
        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            "1" = "🏠";
            "2" = "🌐";
            "3" = "💻";
            "4" = "📁";
            "5" = "🎵";
            default = "💼";
          };
        };
      };
    };
    
    style = ''
      * {
        font-family: "JetBrains Mono", "Font Awesome 6 Free", "Noto Color Emoji";
        font-size: 13px;
      }
    '';
  };
}
