{ pkgs, ... }: let
  scheme = "${pkgs.base16-schemes}/share/themes";
in
  let
    sulphur = "${scheme}/atelier-sulphurpool.yaml";
    black = "${scheme}/black-metal.yaml";
    caroline = "${scheme}/caroline.yaml";
    catpuccin = "${scheme}/catpuccin-mocha.yaml";
    everforest = "${scheme}/everforest-dark-hard.yaml";
    material-gruvbox = "${scheme}/gruvbox-material-dark-soft.yaml";
    material-gruvbox-light = "${scheme}/gruvbox-material-light-soft.yaml";
    kanagawa = "${scheme}/kanagawa.yaml";
    rose-pine = "${scheme}/rose-pine.yaml";
    tokyo-night = "${scheme}/tokyo-night-dark.yaml";
    birds-of-paradise = "${scheme}/birds-of-paradise.yaml";
    charcoal-dark = "${scheme}/charcoal-dark.yaml";
    charcoal-light = "${scheme}/charcoal-light.yaml";
  in {
  stylix = {
    enable = true;
    polarity = "dark";

    image = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/dharmx/walls/refs/heads/main/unsorted/a_group_of_white_lanterns_with_black_writing_on_them.jpg";
      hash = "sha256-+yUcgUKgezEL2XJ098wK1bZ+zPqvniNP4DmJ8qRV2ug=";
    };
    
    base16Scheme = { 
    system = "base16";
    name = "cozy";
    author = "Anton (https://github.com/morhetz/gruvbox)";
    variant = "dark";

    palette = {
      base00 = "18130b";
      base01 = "cf7e00";
      base02 = "fdc243";
      base03 = "ffe1ba";
      base04 = "b8ab66";
      base05 = "e69952";
      base06 = "e7c66d";
      base07 = "e8d5bf";
      base08 = "afa090";
      base09 = "f09300";
      base0A = "ffd88f";
      base0B = "fff2e4";
      base0C = "cfc092";
      base0D = "f5b171";
      base0E = "fed772";
      base0F = "ffffff";
    };
  };

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
  };
}
