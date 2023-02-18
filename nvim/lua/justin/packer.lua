-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer manages itself
    use 'wbthomason/packer.nvim'

use {
    'catppuccin/nvim',
    as = 'catppuccin',
--     config = function()
--         vim.cmd('colorscheme catppuccin-mocha')
--     end
}

use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    --                        or, branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
}

use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

use {
    'altermo/ultimate-autopair.nvim',
    event={'InsertEnter','CmdlineEnter'},
    config=function ()
        require('ultimate-autopair').setup({
            --Config goes here
        })
    end,
}

-- use { 'ms-jpq/coq_nvim', branch = 'coq' } 
-- use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
-- use { 'ms-jpq/coq.thirdparty', branch = '3p' }

use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
    }
}

use 'eandrju/cellular-automaton.nvim'

use('mbbill/undotree')

use('tpope/vim-fugitive')

use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
        require("trouble").setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    end
}

use('nvim-tree/nvim-web-devicons')

use {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup()
    end
}

use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}


use {
    "Maan2003/lsp_lines.nvim",
    config = function()
        require("lsp_lines").setup()
    end,
}

use { "lukas-reineke/indent-blankline.nvim" }


use({
    "folke/noice.nvim",
    config = function()
    end,
    requires = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
    }
})

use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}

use {
    'petertriho/nvim-scrollbar',
    config = function()
        require("scrollbar").setup()
    end
}

use {
    "kevinhwang91/nvim-hlslens",
    config = function()
        require('hlslens').setup()
        require("scrollbar.handlers.search").setup({
            override_lens = function() end,
        })
    end,
}

use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
}

use { 'RRethy/vim-illuminate' }

use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})

use({
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
})

use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

use {
    'norcalli/nvim-colorizer.lua',
    config = function()
        require("colorizer").setup({

        })
    end
}

use {
    'j-hui/fidget.nvim',
    config = function()
        require('fidget').setup({

        })
    end
}

end)

