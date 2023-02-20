return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('nvim-tree').setup {
            update_cwd = true,
            view = {
                width = 30,
                side = 'left',
            },
        }
    end,
}