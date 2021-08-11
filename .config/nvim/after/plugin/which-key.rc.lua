local wk = require('which-key')

wk.register({
    g = {
        name = "+goto",
        t = { "<cmd>GoAlternate!<cr>", "toggle test" },
        a = { "<cmd>Telescope lsp_code_actions<cr>", "code actions" },
        A = { "<cmd>Telescope lsp_range_code_actions<cr>", "code actions" },
        d = { "<cmd>Telescope lsp_definitions<cr>", "definition" },
        D = "declaration",
        e = { "<cmd>Telescope lsp_document_diagnostics<cr>", "diagnostics" },
        E = { "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>", "next diagnostic" },
        i = { "<cmd>Telescope lsp_implementations<cr>", "implementations" },
        r = { "<cmd>Telescope lsp_references<cr>", "references" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "symbols" },
        K = "documentation",
        p = "preview"
    },
    h = {
        name = "+gitsigns",
        b = "blame line",
        s = "stage hunk",
        u = "unstage hunk",
        r = "reset hunk",
        R = "reset buffer",
        p = "preview hunk",
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
    s = {
        name = "+show",
        m = { "<cmd>MinimapToggle<cr>",  "minimap" },
        t = { "<cmd>NvimTreeToggle<cr>", "tree" },
    },
    n = {
        name = "+neuron",
        i = { "<cmd>lua require'neuron'.goto_index()<cr>", "index" },
        o = { "<cmd>lua require'neuron'.enter_link()<cr>", "open link" },
        n = { "<cmd>lua require'neuron/cmd'.new_edit(require'neuron/config'.neuron_dir)<cr>", "new note" },
        f = { "<cmd>lua require'neuron/telescope'.find_zettels()<cr>", "find note" },
        F = { "<cmd>lua require'neuron/telescope'.find_zettels {insert=true}<cr>", "insert link" },
        b = { "<cmd>lua require'neuron/telescope'.find_backlinks()<cr>", "backlinks" },
        B = { "<cmd>lua require'neuron/telescope'.find_backlinks {insert=true}<cr>", "insert backlink" },
        t = { "<cmd>Telescope live_grep<cr>", "tags" },
        T = { "<cmd>lua require'neuron/telescope'.find_tags()<cr>", "insert tag" },
    },
    z = { "<cmd>Goyo<cr>", "zen" }
}, { prefix = "<leader>" })
