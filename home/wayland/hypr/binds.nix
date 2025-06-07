{
  wayland.windowManager.hyprland.settings = {
    bindm = [
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

    bind = [
      "$mod,		Return,     exec, $terminal"
      "$mod,		Q,	        killactive,"
      "$mod	    SHIFT,	Q,	exec, uwsm stop"
      "$mod,		D,	        exec, $menu --show drun"
      "$mod,		F,	        fullscreen,"
      "$mod,		T,	        togglefloating,"
      "$mod,		G,	        togglegroup,"
      "$mod 	  SHIFT, 	N,  changegroupactive, f"
      "$mod 	  SHIFT, 	P, 	changegroupactive, b"
      "$mod, 		H, 	        movefocus, l"
      "$mod, 		L,	        movefocus, r"
      "$mod, 		K, 	        movefocus, u"
      "$mod, 		J, 	        movefocus, d"

      # Apps
      "$mod,    P,          exec, $power"
      "$mod,    W,          exec, $browser"
      "$mod,    C,          exec, flameshot gui" 

      # Scratchpad
      "$mod,       	    S, 	togglespecialworkspace,  magic"
      "$mod 	  SHIFT, 	S, 	movetoworkspace, special:magic"

      # Moving windows
      "$mod     SHIFT, 	H,	swapwindow, l"
      "$mod     SHIFT,	L,  swapwindow, r"
      "$mod     SHIFT, 	K,  swapwindow, u"
      "$mod     SHIFT, 	J,  swapwindow, d"

      # Resizing windows                   X  Y
      "$mod     CTRL, 	H, 	resizeactive, -60 0"
      "$mod     CTRL, 	L, 	resizeactive,  60 0"
      "$mod     CTRL, 	K,  resizeactive,  0 -60"
      "$mod     CTRL, 	J,  resizeactive,  0  60" 

      # Switching workspaces
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"

      # Moving windows to workspaces
      "$mod SHIFT, 1, movetoworkspacesilent, 1"
      "$mod SHIFT, 2, movetoworkspacesilent, 2"
      "$mod SHIFT, 3, movetoworkspacesilent, 3"
      "$mod SHIFT, 4, movetoworkspacesilent, 4"
      "$mod SHIFT, 5, movetoworkspacesilent, 5"
      "$mod SHIFT, 6, movetoworkspacesilent, 6"
      "$mod SHIFT, 7, movetoworkspacesilent, 7"
      "$mod SHIFT, 8, movetoworkspacesilent, 8"
      "$mod SHIFT, 9, movetoworkspacesilent, 9"
      "$mod SHIFT, 0, movetoworkspacesilent, 10"
    ];
  };
}
