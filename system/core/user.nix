{ user, pkgs, ... }: {
  
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.anton = {
    isNormalUser = true;
    description = "anton";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
