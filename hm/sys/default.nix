{ pkgs, ... }: {
  home.packages = with pkgs; [
    swww
  ];

  imports = [
    ./hypr
    ./stylix
    ./xdg.nix
    ./fonts.nix
  ];
}
