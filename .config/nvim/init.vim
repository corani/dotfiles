
" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible
set relativenumber
set number
set number relativenumber
syntax enable
set fileencodings=utf-8
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set incsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set shell=bash
set backupskip=/tmp/*
set history=200
set timeoutlen=500
set clipboard=unnamedplus
set cmdheight=2
set splitbelow splitright
set spell

" when wrapping, don't break in the middle of a word
set linebreak

" mouse in normal mode
set mouse=n

set ruler
set scrolloff=5

set undofile
set undodir=~/.local/share/nvim/undo

set wildmenu

" hide unsaved buffers instead of closing them
set hidden

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

" Suppress appending <PasteStart> and <PasteEnd> when pasting
set t_BE=

set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
"set showmatch
" How many tenths of a second to blink when matching brackets
"set mat=2
" Ignore case when searching
set ignorecase
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=indent,eol,start
" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

" Turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste

" Add asterisks in block comments
set formatoptions+=r

set cursorline
"set cursorcolumn

" global statusline (one statusline, instead of one per split)
" NOTE: this doesn't seem to work (at the moment?), so using the autocommand
" below.
set laststatus=3

augroup StatusLine 
    au!
    au VimEnter * set laststatus=3
augroup END

highlight Normal guibg=#282828

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

if &term =~ "screen"
  autocmd BufEnter * if bufname("") !~ "^?[A-Za-z0-9?]*://" | silent! exe '!echo -n "\ek[`hostname`:`basename $PWD`/`basename %`]\e\\"' | endif
  autocmd VimLeave * silent!  exe '!echo -n "\ek[`hostname`:`basename $PWD`]\e\\"'
endif

" Remember position between restarts
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent! loadview

" show cursorline (always) and cursorcolumn (in active buffer)
set cursorline
augroup CursorColumn
    au!
    au VimEnter * setlocal cursorcolumn
    au WinEnter * setlocal cursorcolumn
    au BufWinEnter * setlocal cursorcolumn
    au WinLeave * setlocal nocursorcolumn
augroup END

" keep the cursor offset 1/4 the screen height while scrolling
augroup centercursor
    au!
    au BufEnter,WinEnter,WinNew *
        \ let &scrolloff = winheight(0) / 4
augroup END

if has('nvim')
    " popup when incremental searching (e.g. :%s/...)
    set inccommand=split

    " highlight on yank
    augroup LuaHighlight
        au!
        au TextYankPost * silent! lua return (not vim.v.event.visual) and require'vim.highlight'.on_yank()
    augroup END
endif

" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown setlocal spell complete+=kspell
" In normal mode:
"   ]s / [s next / previous spell error
"   z= show corrections
"   zg add to dictionary
"   zw mark as incorrect
" In insert mode:
"   <C-n> to auto-complete

set suffixesadd=.md

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

let g:go_doc_keywordprg_enabled=0
let g:go_def_mapping_enabled=0

" TODO(daniel) move this to a plugin / separate file. Convert to lua?
function! HANA_interactive(url) abort
    let url = db#url#parse(a:url)
    let cmd = [
    \    'hdbsql', 
    \    '-u', get(url, 'user'), 
    \    '-p', get(url, 'password'), 
    \    '-n', get(url, 'host') . ':' . get(url, 'port', '30015'),
    \    '-x', '-j', '-A', '-quiet'
    \]
    return cmd
endfunction

let g:db_adapter_hana = 'HANA_'
let g:dbext_default_HANA_bin = 'hdbsql'

lua require("plug").setup()

runtime ./maps.vim

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  colorscheme gruvbox
endif

set exrc

" TODO(daniel): convert vimscript to lua files
lua vim.o.ch=0

" vim: set foldmethod=marker foldlevel=0:
