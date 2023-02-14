{ config, lib, pkgs, ... }: {
    programs.neovim = {
        enable = true;
        vimAlias = true;

        plugins = with pkgs.vimPlugins; [
            vim-devicons
            vim-airline
            vim-airline-themes
            vim-fugitive
            vim-gitgutter
            vim-surround
            vim-commentary
            vim-repeat
            vim-obsession
            vim-nerdtree
            vim-nerdtree-tabs
            vim-nerdtree-git-plugin
            vim-go
            vim-markdown
        ];
    };
}