-- custom plugins
return {
	'jiangmiao/auto-pairs',
    'preservim/nerdtree',
    config = function()
        require('nvim-autopairs').setup()
        require('nerdtree').setup()
    end,

    -- 'akinsho/bufferline.nvim',
    -- version = "v3.*",
    -- dependencies = {
    --     'nvim-tree/nvim-web-devicons'
    -- },
    -- config = function()
    --     require('bufferline').setup()
    -- end,

    -- 'nvim-tree/nvim-tree.lua',
    -- dependencies = {
    --     'nvim-tree/nvim-web-devicons',
    -- },
    -- config = function()
    --     require('nvim-tree').setup {
    --         update_cwd = true,
    --         view = {
    --             width = 30,
    --             side = 'left',
    --         },
    --     }
    -- end,
}

-- return function(use)
    -- use {
    --     'akinsho/bufferline.nvim', 
    --     tag = "v3.*", 
    --     requires = 'nvim-tree/nvim-web-devicons'
    -- }
-- 	use {
-- 		'nvim-tree/nvim-tree.lua',
-- 	    	requires = {
-- 			'nvim-tree/nvim-web-devicons',
-- 		},
-- 	}
-- end
