{
  programs.wlogout = {
    enable = true;
    layout = [
      {
        label = "shutdown";
        action = "systemctl poweroff";
        text = "Shutdown";
        keybind = "s";
      }
      {
        label = "reboot";
        action = "reboot";
        text = "Reboot";
        keybind = "r";
      }
      {
        label = "logout";
        action = "uwsm stop";
        text = "Logout";
        keybind = "l";
      }
      {
        label = "lock";
        action = "hyprlock";
        text = "Lock";
        keybind = "c";
      }
    ];
  };
}
