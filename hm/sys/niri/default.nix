{ lib, config, niri, ... }: {
  imports = [
    ./binds.nix
  ];
  programs.niri = {
    enable = true;
    settings = {
      outputs."DP-1" = {
        mode.height = 1920;
        mode.width = 1080;
        mode.refresh = 144.0;
      };
    };
  };
}
