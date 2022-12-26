local bookmarks = {
    "https://github.com/lalitmee/browse.nvim"
}

require("browse").setup({
    provider = "google",
})

vim.keymap.set("n", "<leader>b", function()
    require("browse").browse({ bookmarks = bookmarks })
end)
