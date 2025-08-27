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
    ./flameshot.nix
    ./fonts.nix
    ./quickshell.nix
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
