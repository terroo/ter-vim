" Define o grupo de sintaxe básico
function! Terlang()
  syntax keyword terKeyword version output out exec

  " Palavras-chave de controle de fluxo
  syntax keyword terControl if else while for return
  
  " Palavras-chave relacionadas a declarações
  syntax keyword terDeclaration set auto class
  
  " Funções de saída
  "syntax keyword terOutput output out exec


  syntax match terComment "//.*"
  syntax match terString "\".*\""

  " Liga os grupos de sintaxe a cores do Vim
  highlight link terKeyword Keyword
  highlight link terControl Conditional
  highlight link terDeclaration Type
  "highlight link terOutput Function

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
