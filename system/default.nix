{ pkgs, ... }: {
  imports = [
    ./bluetooth.nix
    ./boot.nix
    ./gaming.nix
    ./hyprland.nix
    ./keyboard.nix
    ./keymap.nix
    ./locale.nix
    ./login.nix
    ./net.nix
    ./nh.nix
    ./nvidia.nix
    ./pipewire.nix
    ./shell.nix
    ./timezone.nix
    ./user.nix
 ];
  environment.systemPackages = with pkgs; [ home-manager ];
}
