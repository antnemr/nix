{ pkgs, ... }: {
  imports = [
    ./bluetooth.nix
    ./boot.nix
    ./hyprland.nix
    ./keyboard.nix
    ./keymap.nix
    ./locale.nix
    ./login.nix
    ./net.nix
    ./nh.nix
    ./nushell.nix
    ./nvidia.nix
    ./pipewire.nix
    ./steam.nix
    ./timezone.nix
    ./user.nix
 ];
  environment.systemPackages = with pkgs; [ home-manager ];
}
