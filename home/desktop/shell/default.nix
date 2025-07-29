{ pkgs, inputs, ...}: {
  home.packages = [
    inputs.caelestia-shell.packages.${pkgs.system}.default
  ];
}
