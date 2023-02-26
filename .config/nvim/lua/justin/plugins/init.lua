return {
    'lervag/vimtex',
        {
            'lewis6991/gitsigns.nvim',
            event = { 'BufReadPre', 'BufNewFile' },
            dependencies = { 'folke/trouble.nvim', lazy = true },
            config = function()
                require('gitsigns').setup()
                -- require('scrollbar.handlers.gitsigns').setup()
            end
        },

        {
            'chentoast/marks.nvim',
            event = { 'BufReadPre', 'BufNewFile' },
            config = true,
        },

        {
            'altermo/ultimate-autopair.nvim',
            event={'InsertEnter','CmdlineEnter'},
            config=function ()
                require('ultimate-autopair').setup({
                    --Config goes here
                })
            end,
        },

        {
            "folke/trouble.nvim",
            module = true,
            cmd = {
                'Trouble',
                'TroubleToggle'
            },
            opts = { use_diagnostic_signs = true },
            keys = {
                { '<leader>tt', '<cmd>TroubleToggle document_diagnostics<cr>', 'Trouble document diagnostics' },
                { '<leader>tT', '<cmd>TroubleToggle workspace_diagnostics<cr>', 'Trouble workspace diagnostics' },
            },
            dependencies = "nvim-tree/nvim-web-devicons",
            config = function()
                require("trouble").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
        },

        'nvim-tree/nvim-web-devicons',

        {
            "Maan2003/lsp_lines.nvim",
            event = { 'BufReadPre', 'BufNewFile' },
            config = function()
                require("lsp_lines").setup()
            end,
        },

        {
            "SmiteshP/nvim-navic",
            event = { 'BufReadPre', 'BufNewFile' },
            dependencies = "neovim/nvim-lspconfig"
        },

        {
            'RRethy/vim-illuminate',
            event = {
                'BufReadPost',
                'BufNewFile',
            }

        },

        {
            "kylechui/nvim-surround",
            event = { 'BufReadPre', 'BufNewFile' },
            version = "*", -- Use for stability; omit to use `main` branch for the latest features
            config = function()
                require("nvim-surround").setup({
                    -- Configuration here, or leave empty to use defaults
                })
            end
        },

        {
            'norcalli/nvim-colorizer.lua',
            ft = { 'css', 'js', 'tsx', 'jsx' },
            event = { 'BufReadPre', 'BufNewFile' },
            config = true,
            opts = function() vim.cmd.ColorizerToggle() end,
        },
    }
