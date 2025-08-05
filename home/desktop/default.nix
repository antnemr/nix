{ pkgs, ... }: {
  home.packages = with pkgs; [
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
    ./spicetify.nix
    ./stylix.nix
    ./vesktop.nix
    ./vscode.nix
    ./xdg.nix
    ./zathura.nix
    ./zen.nix
  ];
}
