if !exists('g:loaded_lspsaga') | finish | endif

lua << EOF
local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

EOF

inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>

nnoremap <silent> <C-j> <Cmd>Lspsaga diagnostic_jump_next<CR>
nnoremap <silent><leader>gK <Cmd>Lspsaga hover_doc<CR>
nnoremap <silent><leader>gh <Cmd>Lspsaga lsp_finder<CR>
nnoremap <silent><leader>gp <Cmd>Lspsaga preview_definition<CR>

nnoremap <silent><leader>ga <Cmd>Lspsaga code_action<CR>
nnoremap <silent><leader>rn <Cmd>Lspsaga rename<CR>
