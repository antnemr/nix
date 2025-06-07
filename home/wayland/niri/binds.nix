{ config, lib, niri, ... }: {
  programs.niri.settings.binds = with config.lib.niri.actions; {
    # Apps
    "Mod+Return".action = spawn "foot";
    "Mod+D".action = spawn "wofi --show run";
    "Mod+W".action = spawn "zen";
    # "Mod+C".action = spawn "flameshot gui";
    # "Mod+P".action = spawn "wlogout -b 2";

    # General
    "Mod+Q".action = close-window;
    "Mod+Shift+Q".action = quit { skip-confirmation=true; };
    "Mod+Shift+F".action = fullscreen-window;
    "Mod+Ctrl+F".action = expand-column-to-available-width;
    "Mod+F".action = maximize-column;
    "Mod+Space".action = toggle-window-floating;
    "Mod+V".action = switch-focus-between-floating-and-tiling;
    "Mod+O".action = show-hotkey-overlay;
    "Mod+Tab".action = switch-preset-column-width;
    
    "Mod+Comma".action = consume-window-into-column;
    "Mod+Period".action = expel-window-from-column;

    "Mod+Minus".action = set-column-width "-10%";
    "Mod+Plus".action = set-column-width "+10%";
    "Mod+Shift+Minus".action = set-window-height "-10%";
    "Mod+Shift+Plus".action = set-window-height "+10%";

    # Move Column
    "Mod+Shift+H".action = move-column-left;
    "Mod+Shift+L".action = move-column-right;
    "Mod+Shift+Home".action = move-column-to-first;
    "Mod+Shift+End".action = move-column-to-last;

    # Focus Column
    "Mod+H".action = focus-column-left;
    "Mod+L".action = focus-column-right;
    "Mod+Home".action = focus-column-first;
    "Mod+End".action = focus-column-last;

    # Switch Workspace
    # "Mod+1".action = focus-workspace 1;
    # "Mod+2".action = focus-workspace 2;
    # "Mod+3".action = focus-workspace 3;
    # "Mod+4".action = focus-workspace 4;
    # "Mod+5".action = focus-workspace 5;
    # "Mod+6".action = focus-workspace 6;
    # "Mod+7".action = focus-workspace 7;
    # "Mod+8".action = focus-workspace 8;
    # "Mod+9".action = focus-workspace 9;
    "Mod+J".action = focus-window-or-workspace-down;
    "Mod+K".action = focus-window-or-workspace-up;

    # Move to Workspace
    # "Mod+Shift+1".action = move-window-to-workspace 1;
    # "Mod+Shift+2".action = move-window-to-workspace 2;
    # "Mod+Shift+3".action = move-window-to-workspace 3;
    # "Mod+Shift+4".action = move-window-to-workspace 4;
    # "Mod+Shift+5".action = move-window-to-workspace 5;
    # "Mod+Shift+6".action = move-window-to-workspace 6;
    # "Mod+Shift+7".action = move-window-to-workspace 7;
    # "Mod+Shift+8".action = move-window-to-workspace 8;
    # "Mod+Shift+9".action = move-window-to-workspace 9;
    "Mod+Shift+J".action = move-column-to-workspace-down;
    "Mod+Shift+K".action = move-column-to-workspace-up;
  };
}
