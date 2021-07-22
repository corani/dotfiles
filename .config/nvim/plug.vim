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
Plug 'junegunn/goyo.vim'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" auto-close parenthesis
Plug 'cohama/lexima.vim'

Plug 'editorconfig/editorconfig-vim'

Plug 'fatih/vim-go'
Plug 'sebdah/vim-delve'

Plug 'morhetz/gruvbox'

Plug 'mzlogin/vim-markdown-toc'
Plug 'terryma/vim-multiple-cursors'

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
    Plug 'glepnir/lspsaga.nvim'
    Plug 'folke/which-key.nvim'
endif

call plug#end()
