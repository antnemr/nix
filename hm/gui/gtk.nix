{pkgs, ... }: {
  gtk = {
    enable = true;
    iconTheme = {
      name = "Vimix-white-dark";
      package = pkgs.vimix-icon-theme;
    };
  };
}
