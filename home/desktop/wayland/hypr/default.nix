{ pkgs, config, lib, ... }: {
  home.packages = with pkgs; [
    hypridle
    hyprsunset 
    hyprpolkitagent
  ];

  imports = [
    ./binds.nix
    ./hyprlock.nix
    ./hypridle.nix
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
        border_size = 3;
	      gaps_in = 8;
	      gaps_out = 20;
        layout = "dwindle";
        "col.active_border" = lib.mkForce "rgb(${config.lib.stylix.colors.base05})";
        "col.inactive_border" = lib.mkForce "rgb(${config.lib.stylix.colors.base03})";
      };

      animations = {
	      enabled = true;
        bezier = [
          "linear, 0, 0, 1, 1"
          "md3_standard, 0.2, 0, 0, 1"
          "md3_decel, 0.05, 0.7, 0.1, 1"
          "md3_accel, 0.3, 0, 0.8, 0.15"
          "overshot, 0.05, 0.9, 0.1, 1.1"
          "crazyshot, 0.1, 1.5, 0.76, 0.92 "
          "hyprnostretch, 0.05, 0.9, 0.1, 1.0"
          "menu_decel, 0.1, 1, 0, 1"
          "menu_accel, 0.38, 0.04, 1, 0.07"
          "easeInOutCirc, 0.85, 0, 0.15, 1"
          "easeOutCirc, 0, 0.55, 0.45, 1"
          "easeOutExpo, 0.16, 1, 0.3, 1"
          "softAcDecel, 0.26, 0.26, 0.15, 1"
          "md2, 0.4, 0, 0.2, 1 # use with .2s duration"
        ];
        animation = [
          "windows, 1, 3, md3_decel, popin 60%"
          "windowsIn, 1, 3, md3_decel, popin 60%"
          "windowsOut, 1, 3, md3_accel, popin 60%"
          "border, 1, 10, default"
          "fade, 1, 3, md3_decel"
          "layersIn, 1, 3, menu_decel, slide"
          "layersOut, 1, 1.6, menu_accel"
          "fadeLayersIn, 1, 2, menu_decel"
          "fadeLayersOut, 1, 4.5, menu_accel"
          "workspaces, 1, 7, menu_decel, slide"
        ];
      };

      decoration = {
        rounding = 25;
	      active_opacity = 0.75;
	      inactive_opacity = 0.60;
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
