{ pkgs, ... }: 

{
  stylix = {
      image = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/dharmx/walls/refs/heads/main/unsorted/a_group_of_white_lanterns_with_black_writing_on_them.jpg";
      hash = "sha256-+yUcgUKgezEL2XJ098wK1bZ+zPqvniNP4DmJ8qRV2ug=";
    };

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font Mono";
      };
      sansSerif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans";
      };
      serif = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Serif";
      };
    };

    fonts.sizes = {
      applications = 11;
      terminal = 12;
      desktop = 12;
      popups = 10;
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    iconTheme = {
      enable = true;
      package = pkgs.papirus-icon-theme;
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };
    
    targets.firefox.profileNames = [ "anton" ];

    enable = true;
  };
}
