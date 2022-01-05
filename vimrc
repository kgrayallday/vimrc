syntax on 

" tabs to spaces stuff 
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

" set numbers to left column
set nu
" set relative numbers
set rnu

" set new split to either bottom or right
set splitbelow splitright

" using plug as plugin manager
" this code makes sure plug is installed and installs it if not
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged)

Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()


colorscheme gruvbox
set background=dark
