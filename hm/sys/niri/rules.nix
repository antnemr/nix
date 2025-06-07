{
  programs.niri.window-rules = [
    {
      geometry-corner-radius = {
        bottom-left = 16;
        bottom-right = 16;
        top-left = 16;
        top-right = 16;
      };
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
