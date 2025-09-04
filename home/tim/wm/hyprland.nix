{ config, pkgs, ... }:

{
  wayland.windowManager.hyprland = {
    enable = true;
    
    settings = {

      monitor = [
        "eDP-1,1920x1080@165,0x0,1"
      ];

      exec-once = [
        "swaybg -i ./wallpaper.png -m fill"
        "waybar"
      ];

      input = {
        kb_layout = "fr";
        follow_mouse = 1;
        touchpad = {
          natural_scroll = false;
        };
      };

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 2;
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";
        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        blur = {
          enabled = true;
          size = 3;
          passes = 1;
        };
      };

      bind = [
        # Alacritty comme terminal principal
        "SUPER, Q, exec, alacritty"
        "SUPER, Return, exec, alacritty"  # bind alternatif
        
        "SUPER, C, killactive,"
        "SUPER, M, exit,"
        "SUPER, E, exec, thunar"
        "SUPER, V, togglefloating,"
        "SUPER, R, exec, wofi --show drun"
        "SUPER, P, pseudo,"
        "SUPER, J, togglesplit,"
        
        # Navigation focus vim
        "SUPER, H, movefocus, l"
        "SUPER, L, movefocus, r"
        "SUPER, K, movefocus, u"
        "SUPER, J, movefocus, d"

        # Move focus
        "SUPER, left, movefocus, l"
        "SUPER, right, movefocus, r"
        "SUPER, up, movefocus, u"
        "SUPER, down, movefocus, d"
        
        # Ou plus simple avec les codes :
        "SUPER, code:10, workspace, 1"  # 1
        "SUPER, code:11, workspace, 2"  # 2
        "SUPER, code:12, workspace, 3"  # 3
        "SUPER, code:13, workspace, 4"  # 4
        "SUPER, code:14, workspace, 5"  # 5
        
        # Déplacer vers workspace
        "SUPER SHIFT, code:10, movetoworkspace, 1"
        "SUPER SHIFT, code:11, movetoworkspace, 2"
        "SUPER SHIFT, code:12, movetoworkspace, 3"
        "SUPER SHIFT, code:13, movetoworkspace, 4"
        "SUPER SHIFT, code:14, movetoworkspace, 5"

        # Move to workspace
        "SUPER SHIFT, 1, movetoworkspace, 1"
        "SUPER SHIFT, 2, movetoworkspace, 2"
        "SUPER SHIFT, 3, movetoworkspace, 3"
        "SUPER SHIFT, 4, movetoworkspace, 4"
        "SUPER SHIFT, 5, movetoworkspace, 5"
      ];
    };
  };

  programs.waybar = {
    enable = true;
  };
}
