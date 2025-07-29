{ pkgs, inputs, ...}: {
  home.packages = [
    inputs.caelestia-shell.packages.${pkgs.system}.default
    inputs.caelestia-cli.packages.${pkgs.system}.default
  ];
}
