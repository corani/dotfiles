" Reload _vimrc: :so %
" Install new plugins: PluginInstall

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'tomasr/molokai'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'duff/vim-scratch'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'fatih/vim-go'
Plugin 'sebdah/vim-delve'
Plugin 'junegunn/seoul256.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'leafgarland/typescript-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ap/vim-css-color'
Plugin 'vifm/vifm.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set t_Co=256
set encoding=utf-8
set background=dark
set backspace=indent,eol,start
set backup
set diffexpr=MyDiff()
set display=truncate
set guifont=Ubuntu_Mono_derivative_Powerlin:h10:cANSI:qDRAFT
set guioptions=egmrLT
set helplang=En
set history=200
set hlsearch
set incsearch
set keymodel=startsel,stopsel
set langnoremap
set nolangremap
set nrformats=bin,hex
set ruler
set scrolloff=5
set selection=exclusive
set selectmode=mouse,key
set ttimeout
set ttimeoutlen=100
set undofile
set undodir=~/.vim/undo
set whichwrap=b,s,<,>,[,]
set wildmenu

"color molokai
let g:seoul256_background = 233
color seoul256
set number
set cursorline
set cursorcolumn
syntax on
set clipboard=unnamed
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set nobackup
set nowritebackup
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set laststatus=2

" Indent Guides
let g:indent_guides_guide_size = 1
"let g:indent_guides_enable_on_vim_startup = 1

" UltiSnip
let g:UltiSnipsExpandTrigger="<c-cr>"

autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 

let g:EditConfig_exec_path='/usr/local/bin/editorconfig'
let g:EditorConfig_core_mode='external_command'

autocmd VimEnter * GitGutterLineNrHighlightsEnable

" Vifm
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>

" VimWiki
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" NERDtree
" in normal mode: \nt
map <Leader>nt :NERDTreeToggle<CR>
" load NERTTree automatically when opening vim (kind of annoying)
" autocmd vimenter * NERDTree
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" Mouse scrolling
set mouse=nicr"
