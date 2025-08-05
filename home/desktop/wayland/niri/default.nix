{ lib, config, niri, ... }: {
  imports = [
    ./binds.nix
    ./rules.nix
  ];

  programs.niri = {
    enable = true;
    settings = {
      prefer-no-csd = true;
      outputs."DP-1" = {
        mode.height = 1920;
        mode.width = 1080;
        mode.refresh = 143.992;
        position.x = 0;
        position.y = 0;
        scale = 1.0;
      };

      layout = {
        # focus-ring.enable = false;
        border = {
          enable = true;
          width = 2;
        };
        shadow = {
          enable = true;
          softness = 30;
          spread = 10;
        };
        preset-column-widths = [
          {proportion = 1.0 / 6.0;}
          {proportion = 1.0 / 4.0;}
          {proportion = 1.0 / 3.0;}
          {proportion = 1.0 / 2.0;}
          {proportion = 2.0 / 3.0;}
          {proportion = 3.0 / 4.0;}
          {proportion = 5.0 / 6.0;}
        ];
        default-column-width = {proportion = 1.0 / 3.0;};
      };

      input = {
        focus-follows-mouse.enable = true;
        keyboard.xkb.layout = "eu";
        mouse.accel-profile = "flat";
        warp-mouse-to-focus.enable = true;
        workspace-auto-back-and-forth = true;
      };

      environment = {
        LIBVA_DRIVER_NAME = "nvidia";
        __GLX_VENDOR_LIBRARY_NAME = "nvidia";
        GBM_BACKEND = "nvidia-drm";
        NVD_BACKEND = "direct";
      };

      spawn-at-startup = [
        {command = ["hyprsunset --temperature 5000"];}
      ];
      
      hotkey-overlay.skip-at-startup = true;
   };
  };
}
