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

syntax case match
syntax keyword spType       integer string boolean 
syntax keyword spKeyword    request response
syntax keyword spTodo       contained TODO FIXME XXX
syntax cluster spCommentGrp contains=spTodo
syntax match   spId     /-\?\<\d\+\>/
syntax region  spComment start="//" skip="\\$" end="$" keepend contains=@spCommentGrp
syntax match   spField   /\s\([a-z]\+\) /

if version >= 508 || !exists("did_proto_syn_inits")
  if version < 508
    let did_proto_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink spType         Keyword
  HiLink spKeyword      Keyword
  HiLink spTodo         Todo
  HiLink spId           Number
  HiLink spComment      Comment
  HiLink spField        Identifier

  delcommand HiLink
endif

let b:current_syntax = "sproto"
