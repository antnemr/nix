{ pkgs, ... }: {
  home.packages = with pkgs; [
    swww
  ];

  imports = [
    ./hypr
    ./stylix
    ./fonts.nix
  ];
}
