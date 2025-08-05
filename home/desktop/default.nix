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
    ./stylix
    ./unsorted
    ./fonts.nix
    ./xdg.nix
  ];
}
