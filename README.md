# vim-sproto

Vim syntax highlighting for Sproto

## Installation
1. cp sproto.vim ~/.vim/syntax/
2. Add the following to ~/.vimrc:

```vim
augroup filetype
    au! BufRead,BufNewFile *.sproto setfiletype sproto
augroup end
```

Or just create a new file called ~/.vim/ftdetect/sproto.vim with the previous lines on it.
