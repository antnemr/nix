{ pkgs, ... }: {
  imports = [
    ./boot.nix
    ./locale.nix
    ./net.nix
    ./shell.nix
    ./timezone.nix
    ./user.nix
 ];

  environment.systemPackages = with pkgs; [ home-manager ]; 
}
