{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    docker
    usbmuxd
  ];
}
