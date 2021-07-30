local wk = require('which-key')

wk.register({
    g = {
        name = "+goto",
        t = { "<cmd>GoAlternate!<cr>", "toggle test" },
        a = { "<cmd>Telescope lsp_code_actions<cr>", "code actions" },
        A = { "<cmd>Telescope lsp_range_code_actions<cr>", "code actions" },
        d = { "<cmd>Telescope lsp_definitions<cr>", "definition" },
        D = "declaration",
        e = { "<cmd>Telescope lsp_document_diagnostics", "diagnostics" },
        i = { "<cmd>Telescope lsp_implementations<cr>", "implementations" },
        r = { "<cmd>Telescope lsp_references<cr>", "references" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "symbols" },
        K = "documentation",
        p = "preview"
    },
    G = {
        name = "+git",
        b = { "<cmd>Telescope git_branches<cr>", "branches" },
        c = { "<cmd>Telescope git_commits<cr>", "commits" }
    },
    r = {
        name = "+refactor",
        n = "rename",
        f = "format"
    },
    f = {
        name = "+find",
        f = { "<cmd>Telescope find_files<cr>", "file" },
        g = { "<cmd>Telescope grep_string<cr>", "grep" },
        a = { "<cmd>Telescope live_grep<cr>", "live" },
        b = { "<cmd>Telescope buffers<cr>", "buffer" },
        h = { "<cmd>Telescope help_tags<cr>", "help" }
    },
    j = {
        name = "+jump",
        l = { "<cmd>lua require'hop'.hint_lines()<cr>", "line" },
        w = { "<cmd>lua require'hop'.hint_words()<cr>", "word" },
    },
    z = { "<cmd>Goyo<cr>", "zen" }
}, { prefix = "<leader>" })
