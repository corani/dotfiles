-- bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- plugins
local plugins = {
    -- "junegunn/vim-plug",
    "mhinz/vim-startify",
    "stevearc/oil.nvim",
    "mzlogin/vim-markdown-toc",
    "terryma/vim-multiple-cursors",
    "tpope/vim-fugitive",
    -- auto-close parenthesis
    "cohama/lexima.vim",
    "gpanders/editorconfig.nvim",
    {
        "ellisonleao/gruvbox.nvim",
        config = function()
            require("gruvbox") .setup({
                dim_inactive = true,
                transparent_mode = true,
            })
        end
    },
    "j-hui/fidget.nvim",
    "hoob3rt/lualine.nvim",
    "kyazdani42/nvim-tree.lua",
    "kyazdani42/nvim-web-devicons",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
    "folke/lsp-colors.nvim",
    --"lvimuser/lsp-inlayhints.nvim",
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    "p00f/nvim-ts-rainbow",
    "nvim-lua/popup.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
    },
    "nvim-telescope/telescope-github.nvim",
    -- "hrsh7th/nvim-compe",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    "rafamadriz/friendly-snippets",
    "tami5/lspsaga.nvim",
    "folke/which-key.nvim",
    "folke/todo-comments.nvim",
    "folke/trouble.nvim",
    "folke/zen-mode.nvim",
    "folke/twilight.nvim",
    "akinsho/nvim-bufferline.lua",
    "akinsho/toggleterm.nvim",
    "lukas-reineke/indent-blankline.nvim",
    "wfxr/minimap.vim",

    "ThePrimeagen/git-worktree.nvim",
    "ThePrimeagen/refactoring.nvim",
    "lewis6991/gitsigns.nvim",
    "ggandor/lightspeed.nvim",
    "numtostr/comment.nvim",
    "code-biscuits/nvim-biscuits",
    "AckslD/nvim-neoclip.lua",
    "ahmedkhalf/project.nvim",
    "liuchengxu/vista.vim",
    -- "levouh/tint.nvim",
    "ur4ltz/surround.nvim",
    "mbbill/undotree",

    "ray-x/go.nvim",
    {
        "ray-x/guihua.lua",
        build = "cd lua/fzy && make",
    },
    "leoluz/nvim-dap-go",
    "olexsmir/gopher.nvim",
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-telescope/telescope-dap.nvim",
    "stevearc/dressing.nvim",
    "lalitmee/browse.nvim",
    "vim-test/vim-test",

    "ziglang/zig.vim",
    "simrat39/rust-tools.nvim",
    "tetralux/odin.vim",
    "rhysd/vim-llvm",

    {
        "norcalli/nvim-colorizer.lua",
        cmd = "ColorizerToggle",
        config = function()
            require("colorizer").setup()
        end,
    },
    "tpope/vim-dadbod",
    "kristijanhusak/vim-dadbod-ui",
    "kristijanhusak/vim-dadbod-completion",
    {
        "tpope/vim-dadbod",
        opt = true,
        requires = {
            "kristijanhusak/vim-dadbod-ui",
            "kristijanhusak/vim-dadbod-completion",
        },
        config = function()
            require("config/dadbod").setup()
        end,
    },
    {
        "rest-nvim/rest.nvim",
        requires = {
            "nvim-lua/plenary.nvim"
        },
        -- see: https://github.com/rest-nvim/rest.nvim/issues/246
        commit = "8b62563",
        config = function()
            -- see: https://github.com/rest-nvim/rest.nvim
            require("rest-nvim").setup({
                result = {
                    formatters = {
                        json = "jq",
                        html = false
                    }
                }
            })
        end,
    },
    "github/copilot.vim",
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {
            -- add options here
        },
        dependencies = {
            "MunifTanjim/nui.nvim",
            -- optional:
            "rcarriga/nvim-notify",
        },
    },
    {
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                background_colour = "#000000",
            })
        end,
    }
}

local M = {}

function M.setup()
    require("lazy").setup(plugins)
end

return M
