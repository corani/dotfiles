require('go').setup({
    lsp_gofumpt = true,
    lsp_inlay_hints = {
        enable = true,
        only_current_line = false,
    },
    trouble = true,
    luasnip = true,
})

-- Run gofmt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)

require('dap-go').setup()
