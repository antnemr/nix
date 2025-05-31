{pkgs, ... }: {
  home.packages = with pkgs; [
    speedtest-cli
    aria2
    tre
    dua
    navi
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
    ./lazygit.nix
    ./git.nix
    ./btop.nix
    ./fastfetch.nix
    ./mpv.nix
    ./yazi.nix
    ./zellij.nix
    ./zoxide.nix
  ];
}
