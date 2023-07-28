return {
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    event = { 'BufReadPre', 'BufNewFile' },
    keys = {
        { '<A-h>', '<cmd>BufferPrevious<CR>' },
        { '<A-l>', '<cmd>BufferNext<CR>' },
        { '<A-w>', '<cmd>BufferClose<CR>' },
        { '<A-e>', '<cmd>BufferPick<Cr>' },
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
        -- animation = true,
        -- insert_at_start = true,
        -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
