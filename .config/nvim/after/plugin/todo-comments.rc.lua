require('todo-comments').setup({
    keywords = {
        NOTE = { color = "info" },
        TODO = { color = "warning" }
    },
    highlight = {
        keyword = "bg",
        pattern = [[<(KEYWORDS)(\(.+\))?:]],
        comments_only = true,
    },
    colors = { -- find colors for highlight groups with `:highlight`
        info    = { "DiagnosticSignInfo", "DiagnosticInfo", "#2563EB" },
        warning = { "DiagnosticSignWarn", "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    },
    search = {
        command="rg",
        args = {
            "--glob=!vendor",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
        },
        pattern = [[\b(KEYWORDS)(\(.+\))?:]]
    }
})
