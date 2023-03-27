{ pkgs, ... }: 

let
  imports = [
    ./applications/alacritty.nix
    ./applications/starship.nix
    ./applications/git.nix
    ./applications/zsh.nix
    ./applications/nvim/nvim.nix
  ];

in {
  # Don't change this when you change package input. Leave it alone.
  home.stateVersion = "22.11";
  # specify my home-manager configs
  inherit imports;
  home = {
    packages = with pkgs; [
      bat
      yarn
      nodejs
      wget
      tree
      cmake
      curl
      htop
      gcc
      jq
      ranger
      ripgrep
      pinentry
      gnupg
      hugo # go website generator
      sshpass # required for ansible
      comma # nix-shell wrapper
      thefuck # auto correct commands
      watch
      viddy # alternate watch command

      # go utils
      golangci-lint

      # python stuff
      python311
      pipenv
      poetry

      # devops stuff
      operator-sdk
      kubernetes-helm
      kubectx
      kind
      kubectl
      terraform
      ansible
      kcat
    ];

    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      GO11MODULE = "on";
    };
  };

  programs = {
    # let home-manager manage itself
    home-manager.enable = true;

    go = {
        enable = true;
        package = pkgs.go_1_19;
    };
  };
}
