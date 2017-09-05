set nocompatible
filetype off

imap jj <Esc>

set relativenumber
set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'valloric/youcompleteme'
Plugin 'easymotion/vim-easymotion'
Plugin 'NLKNguyen/papercolor-theme'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on


set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor

syntax on

let mapleader = ','
map <Leader><Leader> <Plug>(easymotion-prefix)
set backspace=indent,eol,start
"hi CursorLineNr   term=bold ctermfg=Yellow gui=bold guifg=Yellow
highlight LineNr ctermfg=grey ctermbg=black

set tabstop=2
set shiftwidth=2
set expandtab

let g:UltiSnipsExpandTrigger="§"
