{ config, pkgs, lib, ... }: {
  # backwards compatibility; don't change this
  system.stateVersion = 4;
  
  environment = {
    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
    };
    shells = with pkgs; [ bash zsh ];
    loginShell = pkgs.zsh;
    systemPackages = [];
    systemPath = [ "/opt/homebrew/bin" ];
    pathsToLink = [ "/Applications" ];
  };

  programs = {
    zsh.enable = true;
  };

  services.nix-daemon.enable = true;

  # networking = {
  #   hostName = "jumac";
  # };

  # fonts = {
  #   fontDir.enable = true;
  #   fonts = with pkgs; [
  #     nerdfonts
  #     #corefonts # TODO fix
  #     recursive
  #   ];
  # };

  system = {
    defaults = {
      NSGlobalDomain = {
        AppleFontSmoothing = 0;
        NSAutomaticSpellingCorrectionEnabled = false;
      };
      dock = {
        autohide = true;
      };
    };
  };
}