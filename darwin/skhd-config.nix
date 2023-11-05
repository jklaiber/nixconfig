{ config, pkgs, lib, ... }: {
    home.file.skhd = {
        target = ".config/skhd/skhdrc";
        text = ''
        # This configuration files is written to /etc/skhdrc instead of .config/skhd/skhdrc
        # You can reload skhd with the following command: skhd --reload
        # Alternate closing command
        lalt - q: skhd --key "cmd - w"

        # applications
        lalt - return: open -n -a alacritty
        lalt + cmd - f: open -n /Users/jklaiber/
        lalt - f: alacritty -e ranger .
        lalt - b: /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome
        '';
    };
}