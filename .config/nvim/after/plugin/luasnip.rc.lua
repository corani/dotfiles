local ls = require("luasnip")
local types = require("luasnip.util.types")

require("luasnip.config").setup({
    history = true,
    updateevents = "TextChanged,TextChangedI",
    ext_opts = {
        [types.choiceNode] = {
            virt_text = { { "<-", "Error" } },
        },
    },
})

-- ls.config.set_config({
--     history = true,
--     updateevents = "TextChanged,TextChangedI",
-- })

local function copy(args)
    return args[1]
end

local t, i, f, c, s = ls.text_node, ls.insert_node, ls.function_node, ls.choice_node, ls.s

ls.add_snippets(nil, {
    go = {
        ls.parser.parse_snippet("tc", 
[[func Test$1(t *testing.T) {
    t.Parallel()

    tt := []struct{
        name string
    }{}

    for _, tc := range tt {
        tc := tc // pin

        t.Run(tc.name, func(t *testing.T) {
            t.Parallel()

            $0
        })
    }
}]]),
        s("todo", {
            c(1, {
                t("// TODO(daniel): "),
                t("// NOTE(daniel): "),
                t("// FIXME(daniel): "),
            }),
        }),
    }
})

require("luasnip.loaders.from_vscode").lazy_load()

-- <c-k> expand and jump forwards
vim.keymap.set({ "i", "s" }, "<c-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

-- <c-j> jump backwards
vim.keymap.set({ "i", "s" }, "<c-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

-- <c-l> select option
vim.keymap.set({ "i", "s" }, "<c-l>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

-- <c-L> select option
vim.keymap.set({ "i", "s" }, "<c-L>", function()
    if ls.choice_active() then
        require("luasnip.extras.select_choice")()
    end
end)
