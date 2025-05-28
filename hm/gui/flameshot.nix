{ pkgs, ... }: {
  services.flameshot = {
    package = pkgs.flameshot.override { enableWlrSupport = true; };
    enable = true;
    settings = {
      General = {
        disabledTrayIcon = true;
      };
    };
  };
}
