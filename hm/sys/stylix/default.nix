{ pkgs, ... }: 

{
  stylix = {
    # base16Scheme = "${pkgs.base16-schemes}/share/themes/atelier-sulphurpool.yaml";
  
    cursor.package = pkgs.bibata-cursors;
    cursor.name = "Bibata-Modern-Ice";
  
    image = pkgs.fetchurl {
      url = "https://raw.githubusercontent.com/dharmx/walls/refs/heads/main/unsorted/a_group_of_white_lanterns_with_black_writing_on_them.jpg";
      hash = "sha256-+yUcgUKgezEL2XJ098wK1bZ+zPqvniNP4DmJ8qRV2ug=";
    };

    # targets.hyprland.hyprpaper.enable = false;
    # targets.hyprlock.enable = false;

    cursor.size = 24;

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
    
    targets.firefox.profileNames = [ "anton" ];

    enable = true;
  };
}
