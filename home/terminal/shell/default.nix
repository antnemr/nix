{ lib, pkgs, ... }:
let
  preset = ./26.jsonc;
in
{
  imports = [
    ./starship.nix
  ];

  programs.nushell = {
    enable = true;

    settings = {
      show_banner = false;
    };

    shellAliases = {
      nhs = "nh home switch";
      nos = "nh os switch";
      open = "xdg-open";
      la = "ls -a";
      ll = "ls -l";
      y = "yazi";
      ff = "fastfetch -c ${preset}";
      f = "fastfetch -l none";
      z = "zellij";
      cat = "bat";
      vs = "codium";
    };

    environmentVariables = {
      TRANSIENT_PROMPT_COMMAND = "";
      TRANSIENT_PROMPT_INDICATOR = "";
    };
  };
  home.shell.enableNushellIntegration = true;
}
