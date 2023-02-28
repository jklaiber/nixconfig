{ config, lib, pkgs, ... }: {
    programs.neovim = {
        enable = true;
        vimAlias = true;
    };
    home.file.".config/nvim/init.lua".source = ./init.lua;
    home.file.".config/nvim/lua/custom/plugins/plugins.lua".source = ./lua/custom/plugins/plugins.lua;
    home.file.".config/nvim/lua/custom/plugins/nvim-tree.lua".source = ./lua/custom/plugins/nvim-tree.lua;
    home.file.".config/nvim/lua/custom/plugins/bufferline.lua".source = ./lua/custom/plugins/bufferline.lua;
    home.file.".config/nvim/after/plugin/defaults.lua".source = ./after/plugin/defaults.lua;

    home.file.".config/nvim-vscode/init.lua".source = ./vscode.lua;
}
