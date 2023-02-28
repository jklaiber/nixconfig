{ config, lib, pkgs, ... }: {
    services.skhd.enable = true;
    services.skhd.skhdConfig = ''
    # This configuration files is written to /etc/skhdrc instead of .config/skhd/skhdrc
    # You can reload skhd with the following command: skhd --reload
    # Alternate closing command
    lalt - q: ${config.services.skhd.package}/bin/skhd --key "cmd - w"

    # applications
    lalt - return: open -n -a alacritty
    lalt + cmd - f: open -n /Users/jklaiber/
    lalt - f: alacritty -e ranger .
    lalt - b: /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome

    # layouts
    lalt - tab: yabai -m window --toggle split && yabai -m space --balance
    #lalt + tab - s: yabai -m space --layout stack
    #lalt + tab - b: yabai -m space --layout bsp 

    #lalt - n: yabai -m window --focus stack.next

    # float / unfloat window
    lalt + shift - f: \
        yabai -m window --toggle float; \
        yabai -m window --toggle border

    # switch between spaces
    lalt - 1: yabai -m space --switch s1
    lalt - 2: yabai -m space --switch s2
    lalt - 3: yabai -m space --switch s3
    lalt - 4: yabai -m space --switch s4
    lalt - 5: yabai -m space --switch s5
    lalt - 6: yabai -m space --switch s6
    lalt - 7: yabai -m space --switch s7
    lalt - 8: yabai -m space --switch s8
    lalt - 9: yabai -m space --switch s9

    # move window to space
    lalt + shift - 1: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl send-window-to-space s1
    lalt + shift - 2: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl send-window-to-space s2
    lalt + shift - 3: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl send-window-to-space s3
    lalt + shift - 4: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl send-window-to-space s4
    lalt + shift - 5: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl send-window-to-space s5
    lalt + shift - 6: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl send-window-to-space s6
    lalt + shift - 7: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl send-window-to-space s7
    lalt + shift - 8: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl send-window-to-space s8
    lalt + shift - 9: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl send-window-to-space s9

    # focus windows
    lalt - j: yabai -m window --focus prev || yabai -m window --focus last
    lalt - k: yabai -m window --focus next || yabai -m window --focus first

    # swap windows
    lalt + shift - j: yabai -m window --swap prev || yabai -m window --swap last
    lalt + shift - k: yabai -m window --swap next || yabai -m window --swap first

    # focus monitor (0x2B = ,)
    lalt - 0x2B: python3 /Users/jklaiber/.config/yabai/scripts/yabaictl cycle-monitors

    # window resizing
    lalt - h: yabai -m window --resize left:-20:0 ; yabai -m window --resize right:-30:0
    lalt - l: yabai -m window --resize right:20:0 ; yabai -m window --resize left:30:0
    lalt + lcmd - j: yabai -m window --resize bottom:0:20 ; yabai -m window --resize top:0:20
    lalt + lcmd - k: yabai -m window --resize top:0:-20 ; yabai -m window --resize bottom:0:-20
    '';
}
