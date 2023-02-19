return
{
    {
        'neovim/nvim-lspconfig',
        event = { 'BufReadPre', 'BufNewFile' },
        dependencies = {
            {
                'folke/neodev.nvim',
                config = true,
            },
            {
                'hrsh7th/cmp-nvim-lsp',
                config = true,
                dependencies = {
                    'williamboman/mason-lspconfig.nvim',
                    config = true,
                    dependencies = {
                        'williamboman/mason.nvim',
                        config = true,
                    },
                },
            },
        },
        config = function()
            local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lsp_attach = function(client, bufnr)
                vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float)
                vim.keymap.set('n', '<leader>cl', '<cmd>LspInfo<cr>')
                vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>')
                vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>')
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
                vim.keymap.set('n', 'gI', '<cmd>Telescope lsp_implementations<cr>')
                vim.keymap.set('n', 'gt', '<cmd>Telescope lsp_type_definitions<cr>')
                vim.keymap.set('n', 'K', vim.lsp.buf.hover)
                vim.keymap.set('n', 'gK', vim.lsp.buf.signature_help)
                vim.keymap.set('i', '<c-k>', vim.lsp.buf.signature_help)
            end

            vim.diagnostic.config({
                virtual_text = false,
            })

            local lspconfig = require('lspconfig')
            require('mason-lspconfig').setup_handlers({
                function(server_name)
                    lspconfig[server_name].setup({
                        on_attach = lsp_attach,
                        capabilities = lsp_capabilities,
                    })
                end,
            })
        end,
    }
}
