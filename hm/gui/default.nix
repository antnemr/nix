{ pkgs, ... }: {
  home.packages = with pkgs; [
    waypaper
    xfce.thunar
    localsend
    obsidian
  ];
  imports = [
    ./gaming
    ./browsers
    ./wlogout.nix
    ./flameshot.nix
    ./gtk.nix
    ./zathura.nix
    ./vesktop.nix
    ./foot.nix
    ./mako.nix
    ./spicetify.nix
    ./wofi.nix
  ];
}
