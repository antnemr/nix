{ pkgs, ... }: 
let
  sleek-grub-theme = pkgs.sleek-grub-theme.override {
    withStyle = "dark";
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
        theme = "${sleek-grub-theme}"; 
        font = "${sleek-grub-theme}/Poppins-48.pf2";
      };
    };
  };
}
