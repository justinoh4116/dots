local colors = require('catppuccin.palettes').get_palette "mocha"
return {
    {
        event = { 'BufReadPre', 'BufNewFile' },
        'kevinhwang91/nvim-hlslens',
        dependencies = { 'petertriho/nvim-scrollbar' },
        config = function()
            require("hlslens").setup({
                override_lens = function() end,
                build_position_cb = function(plist, _, _, _)
                    require("scrollbar.handlers.search").handler.show(plist.start_pos)
                end,
            })

            vim.cmd([[
                augroup scrollbar_search_hide
                autocmd!
                autocmd CmdlineLeave : lua require('scrollbar.handlers.search').handler.hide()
                augroup END
            ]])
        end,
    },

    {
        'petertriho/nvim-scrollbar',
        event = { 'BufReadPre', 'BufNewFile' },
        config = function()
            require('scrollbar').setup({

                handle = {
                    text = ' ',
                    color = colors.surface0,
                },
                marks = {
                    Cursor = {
                        color = colors.lavender,
                        text = '━',
                    },
                    Search = { color = colors.maroon, priority = 1, text = { '▝', '▐'} },
                    Error = { color = colors.red, priority = 2, text = { '─', '═' } },
                    Warn = { color = colors.yellow },
                    Info = { color = colors.mauve },
                    Hint = { color = colors.teal },
                    Misc = { color = colors.pink },
                },
            })
            require("scrollbar.handlers.search").setup({
                override_lens = function() end,
            })
            vim.cmd([[
                augroup scrollbar_search_hide
                autocmd!
                autocmd CmdlineLeave : lua require('scrollbar.handlers.search').handler.hide()
                augroup END
            ]])
        end
    },
}
