{pkgs,...}: 
let
  sddm-astronaut = pkgs.sddm-astronaut.override { embeddedTheme = "japanese_aesthetic";};
  Electroharmonix = pkgs.stdenv.mkDerivation {
    name = "Electroharmonix";
    src = pkgs.fetchurl {
      url = "https://github.com/Keyitdev/sddm-astronaut-theme/raw/refs/heads/master/Fonts/Electroharmonix.otf";
      sha256 = "sha256-P/G4ijTGlu1q9xk1wPvy4AjHJ+06vJP25yr5CTOgoC4=";
    };
    
    dontUnpack = true;

    installPhase = ''
      mkdir -p $out/share/fonts/opentype/
      cp $src $out/share/fonts/opentype/
    '';
  };
in
{
  fonts.packages = [
    Electroharmonix
  ];

  environment.systemPackages = [
    sddm-astronaut
  ];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    extraPackages = [
      sddm-astronaut
    ];
    theme = "sddm-astronaut-theme";
    settings = {
      Theme.Font = "Electroharmonix";
    };
  };
}
