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
    birds-of-paradise = "${scheme}/birds-of-paradise.yaml";
    charcoal-dark = "${scheme}/charcoal-dark.yaml";
    charcoal-light = "${scheme}/charcoal-light.yaml";
  in {
  stylix = {
    image = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/dharmx/walls/refs/heads/main/unsorted/a_group_of_white_lanterns_with_black_writing_on_them.jpg";
      hash = "sha256-+yUcgUKgezEL2XJ098wK1bZ+zPqvniNP4DmJ8qRV2ug=";
    };
    
    base16Scheme = ./charcoal-dark.yaml;

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.caskaydia-cove;
        name = "CaskaydiaCove Nerd Font Mono";
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

    targets = {
      zen-browser.enable = false;
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
