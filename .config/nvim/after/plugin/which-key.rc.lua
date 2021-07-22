local wk = require('which-key')

wk.register({
    g = {
        name = "+goto",
        t = { "<cmd>GoAlternate!<cr>", "toggle test" },
        a = "code action",
        d = "definition",
        D = "declaration",
        i = "implementation",
        h = "references",
        K = "documentation",
        p = "preview"
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
    z = { "<cmd>Goyo<cr>", "zen" }
}, { prefix = "<leader>" })
