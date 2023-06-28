return {
    'j-hui/fidget.nvim',
    tag = 'legacy',
    event = { 'BufReadPre', 'BufNewFile' },
    config = {
        window = { blend = 0 }
    },
}
