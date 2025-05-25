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
    nix-search-tv
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
