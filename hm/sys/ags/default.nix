{ inputs, pkgs, ... }:
{
  programs.ags = {
    enable = true;

    # symlink to ~/.config/ags
    configDir = ./config;

    # additional packages to add to gjs's runtime
    extraPackages = with pkgs; [
      inputs.ags.packages.${pkgs.system}.battery
    ];
  };
}
