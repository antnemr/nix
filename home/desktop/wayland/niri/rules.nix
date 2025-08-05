{
  programs.niri.settings.window-rules = [
    {
      geometry-corner-radius = let
        r = 10.0;
      in {
        bottom-left = r;
        bottom-right = r;
        top-left = r;
        top-right = r;
      };
      clip-to-geometry = true;
      draw-border-with-background = false;
    }
    {
      matches = [
        {is-floating = true;}
      ];
      shadow.enable = true;
    }
    {
      matches = [
        {
          app-id = "zen";
          title = "Picture-in-Picture";
        }
      ];
      open-floating = true;
      default-floating-position = {
        x = 32;
        y = 32;
        relative-to = "bottom-right";
      };
      default-column-width = {fixed = 480;};
      default-window-height = {fixed = 270;};
    }
    {
      matches = [{app-id = "blueman-manager";}];
      open-floating = true;
    }
  ];
}
