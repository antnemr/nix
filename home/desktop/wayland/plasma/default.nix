{
  programs.plasma = {
    enable = true;

    workspace = {

    };

    hotkeys.commands = {
      "launch-kitty" = {
        name = "Launch Kitty";
        key = "Meta+Enter";
        command = "kitty";
      };
    };

    #panels = [
    #  {
    #    location = "bottom";
    #    iconTasks = {
    #      launchers = [
    #        "applications:org.kde.dolphin.desktop"
    #        "applications:org.kde.konsole.desktop"
    #      ];
    #    };
    #  }
    #];

    shortcuts = {
      kwin = {
        "Expose" = "Meta+,";
        "Switch Window Down" = "Meta+J";
        "Switch Window Left" = "Meta+H";
        "Switch Window Right" = "Meta+L";
        "Switch Window Up" = "Meta+K";
      };
    };
  };
}
