{ pkgs, ... }: {
  home.packages = with pkgs; [
    waypaper
    xfce.thunar
    localsend
    obsidian
    bitwarden
  ];
  imports = [
    ./browsers
    ./gaming
    ./temp
    ./terminals
    ./unsorted
  ];
}
