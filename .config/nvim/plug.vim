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

Plug 'fatih/vim-go'
Plug 'sebdah/vim-delve'

Plug 'morhetz/gruvbox'

if has("nvim")
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'neovim/nvim-lspconfig'
    Plug 'folke/lsp-colors.nvim'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'nvim-telescope/telescope-github.nvim'
    Plug 'hrsh7th/nvim-compe'
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
    Plug 'lewis6991/gitsigns.nvim'
    Plug 'rcarriga/nvim-notify'
    Plug 'ggandor/lightspeed.nvim'
    Plug 'terrortylor/nvim-comment'
    Plug 'code-biscuits/nvim-biscuits'
    Plug 'AckslD/nvim-neoclip.lua'
    Plug 'ahmedkhalf/project.nvim'
    Plug 'liuchengxu/vista.vim'
    Plug 'blackCauldron7/surround.nvim'
endif

call plug#end()
