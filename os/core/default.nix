{ pkgs, ... }: {
  imports = [
    ./boot.nix
    ./keymap.nix
    ./locale.nix
    ./net.nix
    ./nvidia.nix
    ./pipewire.nix
    ./shell.nix
    ./timezone.nix
    ./user.nix
  ];

  environment.systemPackages = with pkgs; [ home-manager ]; 
}
