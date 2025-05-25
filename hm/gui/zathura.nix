{
  programs.zathura = {
    enable = true;
    mappings = {
      r = "reload";
      J = "zoom out";
      K = "zoom in";
      R = "rotate";
      f = "toggle_fullscreen";
      "[fullscreen] f" = "toggle_fullscreen";
    };

    options = {
      adjust-open = 1;
      scroll-page-aware = true;
      scroll-full-overlap = 0.01;
      scroll-step = 100;
      selection-clipboard = "clipboard";
      render-loading = true;
    };
  };
}
