{ lib, config, niri, ... }: {
  programs.niri = {
    enable = true;
    settings = {
      binds = with config.lib.niri.actions; {
        "Mod+D".action = spawn "wofi --show run";
        "Mod+1".action = focus-workspace 1;
        "Mod+Return".action = spawn "foot";
        "Mod+Q".action = quit { skip-confirmation=true; };
      };
    };
  };
}
