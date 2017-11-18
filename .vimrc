
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

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'itchyny/lightline.vim'

Plugin 'tomtom/tcomment_vim'

Plugin 'majutsushi/tagbar'

Plugin 'airblade/vim-gitgutter'

Plugin 'godlygeek/tabular'

Plugin 'tpope/vim-surround'

Plugin 'Townk/vim-autoclose'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'NLKNguyen/papercolor-theme'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

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
"map <Leader><Leader> <Plug>(easymotion-prefix)
" nmap s <Plug>(easymotion-s2)
" nmap t <Plug>(easymotion-t2)

nmap / <Plug>(easymotion-sn)
nmap n <Plug>(easymotion-next)
nmap N <Plug>(easymotion-prev)

set backspace=indent,eol,start
"hi CursorLineNr   term=bold ctermfg=Yellow gui=bold guifg=Yellow
highlight LineNr ctermfg=grey ctermbg=black

set tabstop=2
set shiftwidth=2
set expandtab

let g:UltiSnipsExpandTrigger="§"

" exuberant-ctags  ctags -R
set tags=;/

nnoremap ,b :buffer *
set wildmenu
set wildignore+=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=*/min/*,*/vendor/*,*/node_modules/*,*/bower_components/*
set wildignore+=tags,cscope.*
set wildignore+=*.tar.*
set wildignorecase
set wildmode=full

set hidden


" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,h let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

nmap <leader>n :NERDTreeToggle<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Folding
nnoremap <Space> za
vnoremap <Space> za

" Quick yanking to the end of the line
nnoremap Y y$

nnoremap <leader>q :bd<CR>   " Quickly close the current buffer

set title                       " change the terminal's title

set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files,
                                "    who did ever restore from swap files anyway?
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo

set hidden                      " hide buffers instead of closing them this
                                "    means that the current buffer can be put
                                "    to background without being written; and
                                "    that marks and undo history are preserved
set laststatus=2                " tell VIM to always put a status line in, even
                                "    if there is only one window
set cmdheight=2                 " use a status bar that is 2 rows high
set clipboard=unnamed
set showmatch
set nowrap
set showmode

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

vmap r "_dP       // it's a capital 'p' on the end

" let g:indent_guides_guide_size = 1
" let g:indent_guides_color_change_percent = 3
set ts=4 sw=4 noet

map <Leader>a= :Tabularize /=<CR>
map <Leader>a: :Tabularize /:<CR>
map <Leader>a:: :Tabularize /:\zs<CR>
map <Leader>a, :Tabularize /,<CR>
map <Leader>a<Bar> :Tabularize /<Bar><CR>

nnoremap <silent> <leader>t :TagbarToggle<CR>
