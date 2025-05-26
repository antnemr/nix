{pkgs, ... }: {
  home.packages = with pkgs; [
    fd
    tldr
    fzf
    duf
    bat
    diff-so-fancy
    imv
    unar
  ];

  imports = [
    ./git.nix
    ./btop.nix
    ./fastfetch.nix
    ./mpv.nix
    ./yazi.nix
    ./zellij.nix
    ./zoxide.nix
  ];
}
