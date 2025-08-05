{ lib, pkgs, ... }: 
let
  virtuaverse = pkgs.fetchFromGitHub {
    owner = "Patato777";
    repo = "dotfiles";
    rev = "cc363921707807d7ad3e36b462f0df793a0fe18a";
    hash = "sha256-fpXGFNrzbV6K9hoZRX4tGieTLzhpPeGm6wn8CF4OGow=";
  };
in
{
  boot = {
    kernelPackages = pkgs.linuxPackages_zen;
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        devices = [ "nodev" ];
        efiSupport = true;
        useOSProber = false;
        gfxmodeEfi = "1920x1080";
        theme = "${virtuaverse}/grub/themes/virtuaverse"; 
      };
    };
  };
}
