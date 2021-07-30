nnoremap <silent>gt <Cmd>:GoAlternate!<CR>
nnoremap <c-J> <cmd>:cnext<cr>
nnoremap <c-K> <cmd>:cprev<cr>

" Compe
let g:lexima_no_default_rules = v:true
call lexima#set_default_rules()

inoremap <silent><expr> <C-space> compe#complete()
inoremap <silent><expr> <cr>      compe#confirm(lexima#expand('<lt>cr>', 'i'))
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
