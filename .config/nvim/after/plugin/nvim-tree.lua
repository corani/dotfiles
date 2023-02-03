vim.g.nvim_tree_auto_close = 1      -- close the tree when it's the last window

require('nvim-tree').setup({
    update_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    actions = {
        open_file = {
            quit_on_open = true,    -- closes the tree when you open a file
        },
    },
})
