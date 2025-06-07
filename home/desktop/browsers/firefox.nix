{ config, pkgs, inputs, ... }:
{
  programs.firefox = {
    enable = true;
    profiles.anton = {
      settings = {
	      "extensions.autoDisableScopes" = 0;
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      };
    };
  };
}
