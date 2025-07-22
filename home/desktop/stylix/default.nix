{ pkgs, ... }: let
  scheme = "${pkgs.base16-schemes}/share/themes";
in
  let
    sulphur = "${scheme}/atelier-sulphurpool.yaml";
    black = "${scheme}/black-metal.yaml";
    caroline = "${scheme}/caroline.yaml";
    catpuccin = "${scheme}/catpuccin-mocha.yaml";
    everforest = "${scheme}/everforest-dark-hard.yaml";
    material-gruvbox = "${scheme}/gruvbox-material-dark-medium.yaml";
    kanagawa = "${scheme}/kanagawa.yaml";
    rose-pine = "${scheme}/rose-pine.yaml";
    tokyo-night = "${scheme}/tokyo-night-dark.yaml";
  in {
  stylix = {
    image = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/dharmx/walls/refs/heads/main/unsorted/a_group_of_white_lanterns_with_black_writing_on_them.jpg";
      hash = "sha256-+yUcgUKgezEL2XJ098wK1bZ+zPqvniNP4DmJ8qRV2ug=";
    };
    
    # base16Scheme = ;

    targets.zen-browser.profileNames = [ "8yfxlizu.Default Profile" ];

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
    
    enable = true;
  };
}
