{ pkgs, ... }: {
  home.packages = with pkgs; [
    xfce.thunar
    localsend
    obsidian
    bitwarden
    stremio
  ];
  imports = [
    ./shell
    ./browsers
    ./stylix
    ./unsorted
    ./fonts.nix
    ./xdg.nix
  ];
}
