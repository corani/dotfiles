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
    "junegunn/vim-plug",
    "mhinz/vim-startify",
    "mzlogin/vim-markdown-toc",
    "terryma/vim-multiple-cursors",
    "tpope/vim-fugitive",
    -- auto-close parenthesis
    "cohama/lexima.vim",
    "editorconfig/editorconfig-vim",
    "morhetz/gruvbox",
    "sainnhe/gruvbox-material",
    "hoob3rt/lualine.nvim",
    "kyazdani42/nvim-tree.lua",
    "kyazdani42/nvim-web-devicons",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "jose-elias-alvarez/null-ls.nvim",
    "folke/lsp-colors.nvim",
    "nvim-lua/completion-nvim",
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
    "hrsh7th/nvim-compe",
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
    "rcarriga/nvim-notify",
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
}

local M = {}

function M.setup()
    require("lazy").setup(plugins)
end

return M
