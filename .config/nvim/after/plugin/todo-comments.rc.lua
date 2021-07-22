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
        pattern = [[\b(KEYWORDS)(\(.+\))?:]]
    }
})
