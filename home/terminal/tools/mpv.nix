{pkgs, ... }: {
  programs.mpv = {
    enable = true;
    scripts = [
      pkgs.mpvScripts.modernx-zydezu
    ];
  };
}
