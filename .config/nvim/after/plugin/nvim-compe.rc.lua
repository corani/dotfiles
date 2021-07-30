vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
    source = {
        path = true;
        calc = true;
        nvim_lsp = true;
    };
}
