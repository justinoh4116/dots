return {
    'nvim-tree/nvim-tree.lua',
    cmd = "NvimTreeToggle",
    keys = {
        { "<leader>fe", "<cmd>NvimTreeToggle<CR>", desc = "NvimTree" }
    },
    dependencies = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    version = 'nightly', -- optional, updated every week. (see issue #1193)
    config = {
        sort_by = "case_sensitive",
        view = {
            width = 30,
            mappings = {
                list = {
                    { key = "u", action = "dir_up" },
                },
            },
        },
        renderer = {
            group_empty = true,
        },
        filters = {
            dotfiles = true,
        },
    }
}
