" Usage:
"
" 1. cp sproto.vim ~/.vim/syntax/
" 2. Add the following to ~/.vimrc:
"
" augroup filetype
"   au! BufRead,BufNewFile *.sproto setfiletype sproto
" augroup end
"
" Or just create a new file called ~/.vim/ftdetect/sproto.vim with the
" previous lines on it.

if exists("b:current_syntax")
    finish
endif

syntax case match
syntax keyword spType       integer string binary boolean
syntax keyword spKeyword  contained  request response
syntax keyword spTodo       contained TODO FIXME XXX
syntax cluster spCommentGrp contains=spTodo
syntax match spOperator /:/ transparent
syntax match   spId      /-\?\<\d\+\>/
syntax match spComment   /#.*$/ contains=@spCommentGrp 
syntax match   spStruct  /\.[a-zA-Z_]\+\s/ contains=spType
syntax match   spStruct  /*[a-zA-Z_.]\+/ contains=spType
syntax match   spStruct  /:\s[a-zA-Z_.]\+/ contains=spType,spOperator,spComment
syntax match   spField   /\s[a-z_]\+ /  contains=spType,spKeyword nextgroup=spStruct

hi def link spType         Keyword
hi def link spKeyword      Keyword
hi def link spTodo         Todo
hi def link spId           Number
hi def link spComment      Comment
hi def link spField        Identifier
hi def link spStruct       Structure

let b:current_syntax = "sproto"
