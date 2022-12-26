require('rust-tools').setup({})

vim.api.nvim_exec([[ autocmd BufWritePre *.rs :silent! lua vim.lsp.buf.format{async=false} ]], false)
