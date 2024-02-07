require('nvim-biscuits').setup({
    show_on_start = true,
    cursor_line_only = false
})
vim.cmd [[
augroup biscuit_highlight
    autocmd!
    au ColorScheme * highlight link BiscuitColor Comment
augroup END
]]
