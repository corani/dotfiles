-- Enable line wrapping in zen-mode. Store the old status when opening, 
-- so we can restore it when closing.
local oldwrap = vim.wo.wrap

require("zen-mode").setup {
    window = {
        backdrop = 0.95,
        width = 0.65,
        height = 1,
        options = {
            number = false,
        },
    },
    plugins = {
        tmux = { enabled = true },
    },
    on_open = function(win)
        oldwrap = vim.wo.wrap 
        vim.wo.wrap = true 
    end,
    on_close = function()
        vim.wo.wrap = oldwrap
    end,
}
