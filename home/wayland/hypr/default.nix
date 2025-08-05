{ pkgs, ... }: {
  home.packages = with pkgs; [
    hypridle
    hyprsunset 
    hyprpolkitagent
  ];

  imports = [
    ./binds.nix
    ./hyprlock.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {

      xwayland = {
      	enabled = true;
      };
      
      monitor = ",1920x1080@144,auto,1";

      windowrulev2 = "float, class:waypaper";

      "$mod" = "SUPER";
      "$terminal" = "foot";
      "$menu" = "wofi";
      "$browser" = "zen";
      "$power" = "wlogout -b 2";

      env = [
        "LIBVA_DRIVER_NAME,nvidia"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
	      "GBM_BACKEND,nvidia-drm"
        "NVD_BACKEND,direct"
      ];
      
      exec-once = [
	      "systemctl --user enable --now hyprpolkitagent.service"
	      "hyprctl setcursor Bibata-Modern-Ice 24"
        "hyprsunset --temperature 5000"
        "caelestia shell -d"
      ];

      general = {
        border_size = 2;
	      gaps_in = 8;
	      gaps_out = 20;
        layout = "dwindle";
      };
      
      animations = {
	      enabled = true;
	      first_launch_animation = true;
      };
      
      animation = [
        "windows, 1, 6, wind, slide"
        "windowsIn, 1, 6, winIn, slide"
        "windowsOut, 1, 5, winOut, slide"
        "windowsMove, 1, 5, wind, slide"
        "border, 1, 10, liner"
        "borderangle, 1, 100, linear, loop"
        "fade, 1, 10, default"
        "workspaces, 1, 5, wind"
      ];
      bezier = [
        "wind, 0.05, 0.9, 0.1, 1.05"
        "winIn, 0.1, 1.1, 0.1, 1.1"
        "winOut, 0.3, -0.3, 0, 1"
        "liner, 1, 1, 1, 1"
        "linear, 0.0, 0.0, 1.0, 1.0"
      ];

      decoration = {
        rounding = 5;
	      active_opacity = 0.8;
	      inactive_opacity = 0.70;
	      fullscreen_opacity = 1;

        blur = {
          enabled = true;
	        special = true;
	        brightness = 1.0;
	        contrast = 1.0;
	        noise = 0.02;
	        passes = 3;
	        size = 10;
        };

        shadow = {
	        enabled = true;
	        range = 20;
	        ignore_window = false;
	        offset = "2 2";
        };
      };

      master = {
      };

      dwindle = {
        force_split = 2;
      };	


      input = {
	      kb_layout = "eu";
	      follow_mouse = 1;
	      accel_profile = "flat";
	      sensitivity = 0.0;
      };

      misc = {
	      disable_hyprland_logo = true;
      	enable_swallow = true;
      };
    };
  };
}
