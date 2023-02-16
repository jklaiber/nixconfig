{ config, lib, pkgs, ... }: {
    programs.neovim = {
        enable = true;
        vimAlias = true;
    };
    home.file.".config/nvim/init.lua".source = ./init.lua;
    home.file.".config/nvim/vscode.vim".source = ./vscode.vim;
}
