{ pkgs, ... }: {
  home.packages = with pkgs; [
    xfce.thunar
    localsend
    obsidian
    bitwarden
    stremio
  ];
  imports = [
    ./plasma
    ./browsers
    ./gaming
    ./temp
    ./stylix
    ./unsorted
    ./fonts.nix
    ./xdg.nix
  ];
}
