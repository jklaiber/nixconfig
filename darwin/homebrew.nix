{ config, pkgs, lib, ... }: {
  homebrew = {
    enable = true;
    caskArgs.no_quarantine = true;
    global.brewfile = true;
    masApps = { };
    casks = [
      "flameshot"
      "karabiner-elements"
    ];
    taps = [
      "koekeishiya/formulae" # yabai
    ];
    brews = [
      "koekeishiya/formulae/skhd"
    ];
  };
}
