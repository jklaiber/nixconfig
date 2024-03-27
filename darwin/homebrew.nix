{ config, pkgs, lib, ... }: {
  homebrew = {
    enable = true;
    caskArgs.no_quarantine = true;
    global.brewfile = true;
    masApps = { };
    casks = [
      "flameshot"
      "karabiner-elements"
      "spaceid"
      "amethyst"
      "font-jetbrains-mono-nerd-font"
      "visual-studio-code"
      "google-chrome"
      "1password"
      "1password-cli"
    ];
    taps = [
      "koekeishiya/formulae" # yabai, skhd
      "homebrew/cask-fonts"
      "jklaiber/homebrew-tap"
    ];
    brews = [
      "koekeishiya/formulae/skhd"
      "jklaiber/homebrew-tap/jumper"
    ];
  };
}
