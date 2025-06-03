{ lib, config, niri, ... }: {
  programs.niri = {
    enable = true;
    settings = with config.lib.niri.actions; {
      "Mod+D".action = spawn "wofi --show run";
      "Mod+Enter".action = spawn "foot";
      "Mod+1".action = focus-workspace 1;
      "Mod+Q".action = quit { skip-confirmation=true; };
    };
  };
}
