" set shell=bash              "usefull when using fish shell
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
        Plugin 'VundleVim/Vundle.vim'

        Plugin 'tpope/vim-repeat'
        Plugin 'tpope/vim-surround'
        Plugin 'tpope/vim-fugitive'
        Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

        " Python
        Plugin 'vim-scripts/indentpython.vim'
        Bundle 'Valloric/YouCompleteMe'
        Plugin 'vim-syntastic/syntastic'
        Plugin 'nvie/vim-flake8'
        Plugin 'plytophogy/vim-virtualenv'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme codedark
set encoding=utf-8
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set showcmd             " show command in bottom bar
set ic                  " ignore casesentivity during search
set hls                 " highlight partial search 

" Search down into subfolders
" Provides tab-completition for all file-related tasks
set path+=**
let mapleader = ","

" Python
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on
set laststatus=2

" YCM config
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

