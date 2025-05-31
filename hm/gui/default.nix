{ pkgs, ... }: {
  home.packages = with pkgs; [
    waypaper
    xfce.thunar
    localsend
    obsidian
    bitwarden
  ];
  imports = [
    ./gaming
    ./browsers
    ./terminals
    ./wlogout.nix
    ./flameshot.nix
    ./gtk.nix
    ./zathura.nix
    ./vesktop.nix
    ./mako.nix
    ./spicetify.nix
    ./wofi.nix
  ];
}
