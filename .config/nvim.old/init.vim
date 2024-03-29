" Reload _vimrc: :so %
" Install new plugins: PlugInstall

set nocompatible              " be iMproved, required

" install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')
Plug 'junegunn/vim-plug'

" Git
Plug 'tpope/vim-fugitive'
Plug 'jreybert/vimagit'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'godlygeek/tabular'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mhinz/vim-startify'

Plug 'jiangmiao/auto-pairs'

if has('nvim')
    " code completion
    " curl -sL install-node.now.sh/lts | sudo -E bash -
    " curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    " echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    " sudo apt update && sudo apt install yarn
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'neoclide/coc.nvim', {'branch': 'master'}
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    " :CocInstall coc-snippets
    Plug 'honza/vim-snippets'

    " Better syntax highlighting
    Plug 'nvim-treesitter/nvim-treesitter'
endif

" Cheatsheet
Plug 'dbeniamine/cheat.sh-vim'

" LLVM
Plug 'rhysd/vim-llvm'

" Go
Plug 'fatih/vim-go'
Plug 'sebdah/vim-delve'

Plug 'mtth/scratch.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" colorthemes
"Plug 'tomasr/molokai'
"Plug 'junegunn/seoul256.vim'
"Plug 'sainnhe/sonokai'
"Plug 'joshdick/onedark.vim'
"Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
"Plug 'rakr/vim-one'
"Plug 'NLKNguyen/papercolor-theme'

" :Goyo to remove distractions
Plug 'junegunn/goyo.vim'

" Find stuff
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'stsewd/fzf-checkout.vim'

Plug 'editorconfig/editorconfig-vim'
Plug 'mzlogin/vim-markdown-toc'
Plug 'leafgarland/typescript-vim'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'ap/vim-css-color'
Plug 'vifm/vifm.vim'
Plug 'dhruvasagar/vim-table-mode'

Plug 'vimwiki/vimwiki'
Plug 'tbabej/taskwiki'
Plug 'mattn/calendar-vim'

" Nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Motions
" <leader><leader>f / b search forward/backwards
" <leader><leader>j / k jump line forward/backward
" <leader><leader>n / N jump next / previous highlighted search
Plug 'easymotion/vim-easymotion'

Plug 'liuchengxu/vim-which-key'

Plug 'voldikss/vim-floaterm'

Plug 'kylelaker/riscv.vim'
call plug#end()

" vimplug: check if plugin is loaded
function! PlugLoaded(name)
    return (
        \ has_key(g:plugs, a:name) &&
        \ isdirectory(g:plugs[a:name].dir) &&
        \ stridx(&rtp, trim(g:plugs[a:name].dir, '/', 2)) >= 0)
endfunction

if has('termguicolors')
    set termguicolors
endif

set t_Co=256
set encoding=utf-8
set backspace=indent,eol,start
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
set title
set titlestring=nvim:\ %t
set ttimeout
set ttimeoutlen=100
set undofile
set undodir=~/.vim/undo
set whichwrap=b,s,<,>,[,]
set wildmenu
set number
syntax on
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4    " auto indent
set softtabstop=4
set expandtab       " spaces instead of tabs
set smartindent
set nobackup
set nowritebackup
set cmdheight=2
set splitbelow splitright

" hide unsaved buffers instead of closing them
set hidden
" Mouse scrolling
set mouse=nicr"


set background=dark

if PlugLoaded('vim-one')
    let g:airline_theme = 'one'
    colorscheme one
endif

if PlugLoaded('molokai')
    let g:airline_theme = 'molokai'
    colorscheme molokai
endif

if PlugLoaded('seoul256.vim')
    let g:seoul256_background = 234
    let g:airline_theme = 'seoul256'
    colorscheme seoul256
endif

if PlugLoaded('sonokai')
    let g:sonokai_style = 'shusia'
    let g:airline_theme = 'sonokai'
    colorscheme sonokai
endif

if PlugLoaded('onedark.vim')
    let g:airline_theme = 'onedark'
    colorscheme onedark
endif

if PlugLoaded('nord-vim')
    let g:airline_theme = 'nord'
    colorscheme nord
endif

if PlugLoaded('gruvbox')
    let g:airline_theme = 'gruvbox'
    colorscheme gruvbox
endif

if PlugLoaded('papercolor-theme')
    let g:airline_theme='papercolor'
    let g:PaperColor_Theme_Options = {
        \   'theme': {
        \       'default': {
        \           'transparent_background': 1,
        \           'allow_bold': 1
        \       }
        \   }
        \ }
    colorscheme PaperColor
endif

" Keep visual select
vmap < <gv
vmap > >gv

if PlugLoaded('fzf.vim')
    let $FZF_DEFAULT_COMMAND = 'ag -g ""'
    nnoremap <silent> <leader>sf :Files<CR>

    " gitgrep popup
    command! -bang -nargs=* GGrep
        \ call fzf#vim#grep(
        \   'git grep --line-number '.shellescape(<q-args>), 0,
        \   <bang>0 ? fzf#vim#with_preview({'options': '--no-hscroll'}, 'up:60%')
        \           : fzf#vim#with_preview({'options': '--no-hscroll'}, 'right:50%'),
        \   <bang>0)
endif

if PlugLoaded('fzf-checkout.vim')
    let g:fzf_checkout_git_options = '--sort=-committerdate'
endif

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

if PlugLoaded('scratch.vim')
    " In normal mode:
    "   gs: open scratch buffer and insert
    " In visual mode:
    "   gs: copy selection to scratch buffer
    let g:scratch_autohide = 1
    let g:scratch_persistence_file = '~/.local/share/nvim/scratch.vim'
endif

" spell check
autocmd FileType markdown setlocal spell complete+=kspell
" In normal mode:
"   ]s / [s next / previous spell error
"   z= show corrections
"   zg add to dictionary
"   zw mark as incorrect
" In insert mode:
"   <C-n> to auto-complete

if PlugLoaded('vim-airline')
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1

    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif

    let g:airline_symbols.space = "\ua0"
    set laststatus=2
endif

if PlugLoaded('vim-indent-guides')
    let g:indent_guides_guide_size = 1
    "let g:indent_guides_enable_on_vim_startup = 1
endif

if PlugLoaded('vim-gitgutter')
    autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 

    autocmd VimEnter * GitGutterLineNrHighlightsEnable

    " update more quickly (in ms)
    set updatetime=500
endif

if PlugLoaded('editorconfig-vim')
    let g:EditorConfig_exec_path='/usr/bin/editorconfig'
    let g:EditorConfig_core_mode='external_command'
endif

if PlugLoaded('vimwiki')
    let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md', 'auto_diary_index': 1}]
    let g:vimwiki_global_ext = 0
    "map <Leader>ww :VimwikiIndex<CR>
    "map <Leader>wi :VimwikiDiaryIndex<CR>
    "map <Leader>w<Leader>w :VimwikiMakeDiaryNote<CR>
endif

if PlugLoaded('calendar-vim')
    let g:calendar_monday = 1
    let g:calendar_weeknm = 1
endif

if PlugLoaded('nerdtree')
    " in normal mode: \nt
    map <Leader>nt :NERDTreeToggle<CR>
    " load NERTTree automatically when opening vim (kind of annoying)
    " autocmd vimenter * NERDTree
    let g:NERDTreeFileExtensionHighlightFullName = 1
    let g:NERDTreeExactMatchHighlightFullName = 1
    let g:NERDTreePatternMatchHighlightFullName = 1
endif

if PlugLoaded('goyo.vim')
    let g:goyo_width = 120
endif

" COC
if has('nvim') && PlugLoaded('coc.nvim')
    set updatetime=300
    set shortmess+=c
    set signcolumn=yes

    " Ctrl+Space for completion
    inoremap <silent><expr> <C-space> coc#refresh()

    autocmd BufWritePre *.go :call CocAction("organizeImport")

    function! s:show_documentation()
        if (index(['vim','help'], &filetype) >= 0)
            execute 'h '.expand('<cword>')
        elseif (coc#rpc#ready())
            call CocActionAsync('doHover')
        else
            execute '!' . &keywordprg . " " . expand('<cword>')
        endif
    endfunction

    nnoremap <silent> K :call <SID>show_documentation()<CR>
endif

if PlugLoaded('nvim-treesitter')
lua << EOF
require('nvim-treesitter.configs').setup {
    ensure_installed = "maintained",
    highlight = {
        enable = true,
    },
}
EOF
endif

if PlugLoaded('vim-which-key')
    nnoremap <silent> <leader> :WhichKey "\\"<CR>

    let g:which_key_use_floating_win = 0
    highlight default link WhichKey Operator
    highlight default link WhichKeySeperator DiffAdded
    highlight default link WhichKeyGroup Identifier
    highlight default link WhichKeyDesc Function

    let g:which_key_map = {}

    if PlugLoaded('goyo.vim')
        let g:which_key_map['z'] = [ 'Goyo', 'zen' ]
    endif

    if PlugLoaded('fzf.vim')
        let g:which_key_map.s = {
            \ 'name': '+fzf',
            \ 'f': [ ':Files',      'Files'   ],
            \ 'l': [ ':Lines',      'Lines'   ],
            \ 'g': [ ':GGrep',      'GitGrep' ],
            \ 'a': [ ':Ag',         'Grep'    ],
            \ 'b': [ ':Buffers',    'Buffers' ],
            \ }
    endif

    if PlugLoaded('vim-floaterm')
        let g:which_key_map.t = {
            \ 'name': '+terminal',
            \ ';': [ ':FloatermNew --wintype=normal --height=12',   'Terminal'  ],
            \ 'g': [ ':FloatermNew lazygit',                        'Git'       ],
            \ 'd': [ ':FloatermNew lazydocker',                     'Docker'    ],
            \ }
    endif

    if PlugLoaded('coc.nvim')
        let g:which_key_map.g = {
            \ 'name': '+goto',
            \ 'b': [ ":GBranches", 'Branch' ],
            \ 'c': [ ":Magit", 'Commit' ],
            \ 'd': [ ":call CocAction('jumpDefinition')", 'Definition' ],
            \ 'i': [ ":call CocAction('jumpImplementation')", 'Implementation' ],
            \ 'r': [ ":call CocAction('jumpReferences')", 'References' ],
            \ 's': [ ":Scratch", 'Scratch' ],
            \ 'o': [ ":CocList outline", 'Outline' ],
            \ 'D': [ ":GoDoc", 'Documentation' ],
            \ 't': [ ":GoAlternate!", 'Switch Code/Test' ],
            \ }
        let g:which_key_map.r = {
            \ 'name': '+refactor',
            \ 'f': [ "<Plug><coc-format-selected)", 'Format' ],
            \ 'n': [ "<Plug>(coc-rename)", 'Rename' ],
            \ }
    endif

    if PlugLoaded('vifm.vim')
        let g:which_key_map.v = {
            \ 'name': '+vifm',
            \ 'v': [ ':Vifm', 'Vifm' ],
            \ 's': [ ':VsplitVifm', 'VsplitVifm' ],
            \ }
    endif

    call which_key#register('\', "g:which_key_map")
endif

if PlugLoaded('vim-floaterm')
    let g:floaterm_keymap_toggle = '<F1>'
    let g:floaterm_keymap_next   = '<F2>'
    let g:floaterm_keymap_prev   = '<F3>'
    let g:floaterm_keymap_new    = '<F4>'

    let g:floaterm_wintitle = 0
    let g:floaterm_autoclose = 1
    let g:floaterm_autoinsert = 1
    let g:floaterm_width = 0.8
    let g:floaterm_height = 0.8
endif

