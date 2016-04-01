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

### Install with bundle
1. git clone https://github.com/spin6lock/vim_sproto
2. mv vim_sproto ~/.vim/bundle/sproto

![Alt text](vim_sproto_screenshot.png?raw=true "screenshot")
