local wk = require('which-key')

wk.register({
    g = {
        name = "+goto",
        t = { "<cmd>GoAlt!<cr>", "toggle test" },
        T = { "<cmd>Telescope lsp_type_definitions<cr>", "type definition" },
        d = { "<cmd>Telescope lsp_definitions<cr>", "definition" },
        D = "declaration",
        e = { "<cmd>Telescope lsp_document_diagnostics<cr>", "diagnostics" },
        E = { "<cmd>lua vim.lsp.diagnostic.goto_next()<cr>", "next diagnostic" },
        i = { "<cmd>Telescope lsp_implementations<cr>", "implementations" },
        r = { "<cmd>Telescope lsp_references<cr>", "references" },
        s = { "<cmd>Telescope lsp_document_symbols<cr>", "symbols" },
        K = { "<cmd>lua vim.lsp.buf.hover()<cr>", "documentation" },
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
        c = { "<cmd>Telescope git_commits<cr>", "commits" },
        w = { "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<cr>", "worktrees" },
        W = { "<cmd>lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>", "create worktree" }
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
    s = {
        name = "+show",
        a = { "<cmd>Telescope lsp_code_actions<cr>", "code actions" },
        b = { "<cmd>lua require('nvim-biscuits').toggle_biscuits()<cr>", "biscuits" },
        A = { "<cmd>Telescope lsp_range_code_actions<cr>", "range code actions" },
        m = { "<cmd>MinimapToggle<cr>",  "minimap" },
        f = { "<cmd>NvimTreeToggle<cr>", "file tree" },
        t = { "<cmd>TroubleToggle<cr>", "trouble" },
        c = { "<cmd>lua require('telescope').extensions.neoclip.default()<cr>", "clipboard" },
        p = { "<cmd>Telescope projects<cr>", "projects" },
        u = { "<cmd>UndotreeToggle<cr>", "undotree" },
        v = { "<cmd>Vista!!<cr>", "vista" },
    },
    z = { 
        name = "+zen",
        s = "shade",
        t = { "<cmd>Twilight<cr>", "twilight" },
        z = { "<cmd>ZenMode<cr>", "zen" },
    },
}, { prefix = "<leader>" })
