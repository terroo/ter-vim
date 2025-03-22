" Define o grupo de sintaxe básico
function! Terlang()
  syntax keyword terKeyword if else while return set auto class output out exec for
  syntax match terComment "//.*"
  syntax match terString "\".*\""

  " Liga os grupos de sintaxe a cores do Vim
  highlight link terKeyword Keyword
  highlight link terComment Comment
  highlight link terString String

  autocmd BufRead,BufNewFile *.ter set filetype=ter
  set autoindent
  set smartindent
  set cindent
endfunction

autocmd BufRead,BufNewFile *.ter set filetype=ter
au BufReadPost,BufNewFile *.ter, :call Terlang()
"https://github.com/vala-lang/vala.vim/blob/master/syntax/vala.vim
