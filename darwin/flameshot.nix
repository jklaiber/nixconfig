{ config, pkgs, lib, ... }: {
    home.file.flameshot = {
        target = ".config/flameshot/flameshot.ini";
        text = ''
            [General]
            contrastOpacity=188
            disabledTrayIcon=true
            drawColor=#2e303e
            savePath=/Users/jklaiber/Downloads
            showDesktopNotification=false
            showHelp=false
            showStartupLaunchMessage=false
            startupLaunch=true

            [Shortcuts]
            TAKE_SCREENSHOT=Alt+Shift+P
        '';
    };
}