vim.g.nvim_tree_auto_close = 1      -- close the tree when it's the last window
vim.g.nvim_tree_quit_on_open = 1    -- closes the tree when you open a file
vim.g.nvim_tree_respect_buf_cwd = 1

require('nvim-tree').setup({
    update_cwd = true,
    update_focused_file = {
        enabled = true,
        update_cwd = true,
    },
})
