" Define o grupo de sintaxe básico

function! Terlang()
  syntax keyword terKeyword version output out exec
  syntax keyword terControl if else while for return
  syntax keyword terDeclaration set auto class

  syntax match terComment "//.*"
  syntax region terMultilineComment start=/\/\*/ end=/\*\// contains=terMultilineComment
  syntax region terString start=+"+ skip=+\\"+ end=+"+

  highlight link terKeyword Keyword
  highlight link terControl Conditional
  highlight link terDeclaration Type
  highlight link terComment Comment
  highlight link terMultilineComment Comment
  highlight link terString String

  autocmd BufRead,BufNewFile *.ter set filetype=ter
  set autoindent
  set smartindent
  set cindent
endfunction


autocmd BufRead,BufNewFile *.ter set filetype=ter
au BufReadPost,BufNewFile *.ter, :call Terlang()
