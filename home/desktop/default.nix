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
    ./temp
    ./stylix
    ./unsorted
    ./fonts.nix
    ./xdg.nix
  ];
}
