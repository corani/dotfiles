require("refactoring").setup({})
require("telescope").load_extension("refactoring")

vim.api.nvim_set_keymap("n", "<leader>ri", 
    [[ <cmd>lua require("refactoring").refactor("Inline Variable")<cr> ]], 
    { noremap = true, silent = true, expr = false })

vim.api.nvim_set_keymap("v", "<leader>rr",
    [[ <esc><cmd>lua require("telescope").extensions.refactoring.refactors()<cr> ]],
    { noremap = true })
