local null_ls = require("null-ls")

null_ls.setup{
    sources = {
        null_ls.builtins.formatting.gofumpt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.golines,
        null_ls.builtins.completion.luasnip,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.hover.dictionary,
        null_ls.builtins.code_actions.gitsigns,
        null_ls.builtins.code_actions.gomodifytags,
    },
}
