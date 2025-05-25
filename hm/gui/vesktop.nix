{
  programs.vesktop = {
    enable = true;
    settings = {
      checkUpdates = false;
      minimizeToTray = false;
      hardwareAcceleration = true;
      discordBranch = "stable";
      startWithSystem = false;
      arRPC = false;
    };

    vencord = {
      settings = {
        plugins = {
          BetterFolders.enable = true;
          ClearURLs.enable = true;
          FakeNitro.enable = true;
          MessageLogger.enable = true;
          OpenInApp.enable = true;
          QuickReply.enable = true;
          ReadAllNotificationsButton.enable = true;
          RelationshipNotifier.enable = true;
          ReverseImageSearch.enable = true;
          ShowHiddenChannels.enable = true;
          SilentTyping.enable = true;
          WebKeybinds.enable = true;
          NewGuildSettings.enable = true;
        };
      };
    };
  };
}
