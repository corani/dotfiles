" install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if has("nvim")
    let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'junegunn/vim-plug'

Plug 'mhinz/vim-startify'
Plug 'mzlogin/vim-markdown-toc'
Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-fugitive'

" auto-close parenthesis
Plug 'cohama/lexima.vim'

Plug 'editorconfig/editorconfig-vim'

Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'

if has("nvim")
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'neovim/nvim-lspconfig'
    Plug 'williamboman/nvim-lsp-installer'
    Plug 'folke/lsp-colors.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope-github.nvim'
    Plug 'hrsh7th/nvim-compe'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'rafamadriz/friendly-snippets'
    Plug 'tami5/lspsaga.nvim'
    Plug 'folke/which-key.nvim'
    Plug 'folke/todo-comments.nvim'
    Plug 'folke/trouble.nvim'
    Plug 'folke/zen-mode.nvim'
    Plug 'folke/twilight.nvim'
    Plug 'akinsho/nvim-bufferline.lua'
    Plug 'akinsho/toggleterm.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'wfxr/minimap.vim'

    Plug 'ThePrimeagen/git-worktree.nvim'
    Plug 'ThePrimeagen/refactoring.nvim'
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'rcarriga/nvim-notify'
    Plug 'ggandor/lightspeed.nvim'
    Plug 'numtostr/comment.nvim'
    Plug 'code-biscuits/nvim-biscuits'
    Plug 'AckslD/nvim-neoclip.lua'
    Plug 'ahmedkhalf/project.nvim'
    Plug 'liuchengxu/vista.vim'
    Plug 'sunjon/shade.nvim'
    Plug 'ur4ltz/surround.nvim'

    Plug 'ray-x/go.nvim'
    Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make'}
    Plug 'leoluz/nvim-dap-go'
    Plug 'mfussenegger/nvim-dap'
    Plug 'rcarriga/nvim-dap-ui'
    Plug 'theHamsta/nvim-dap-virtual-text'
    Plug 'nvim-telescope/telescope-dap.nvim'
    Plug 'stevearc/dressing.nvim'

    Plug 'ziglang/zig.vim'
    Plug 'simrat39/rust-tools.nvim'
endif

call plug#end()
