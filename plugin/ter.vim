" Define o grupo de sintaxe básico
syntax keyword terKeyword if else while return set auto class output out
syntax match terComment "//.*"
syntax match terString "\".*\""

" Liga os grupos de sintaxe a cores do Vim
highlight link terKeyword Keyword
highlight link terComment Comment
highlight link terString String

autocmd BufRead,BufNewFile *.ter set filetype=ter
