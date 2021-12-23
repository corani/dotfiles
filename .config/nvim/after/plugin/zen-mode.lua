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
    end,
    on_close = function()
    end,
}
