{ pkgs, ... }: {
  home.packages = with pkgs; [
    thunderbird
    pavucontrol
    xfce.thunar
    localsend
    obsidian
    bitwarden
    stremio
  ];
  imports = [
    ./caelestia.nix
    ./flameshot.nix
    ./fonts.nix
    ./stylix.nix
    ./spicetify.nix
    ./vesktop.nix
    ./vscode.nix
    ./xdg.nix
    ./zathura.nix
    ./zen.nix
    ./wayland
  ];
}
