require('todo-comments').setup({
    keywords = {
        NOTE = { color = "info" },
        TODO = { color = "warning" }
    },
    highlight = {
        keyword = "bg",
        pattern = [[<(KEYWORDS)(\(.+\))?:]]
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
