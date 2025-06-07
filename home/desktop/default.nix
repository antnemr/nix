{ pkgs, ... }: {
  home.packages = with pkgs; [
    xfce.thunar
    localsend
    obsidian
    bitwarden
    stremio
  ];
  imports = [
    ./browsers
    ./gaming
    ./temp
    ./unsorted
    ./fonts.nix
    ./stylix.nix
    ./xdg.nix
  ];
}
