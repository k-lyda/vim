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
        Plugin 'tpope/vim-commentary'
        Plugin 'tomasiser/vim-code-dark'
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'
 
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

" Airline options
let g:airline_theme='codedark'                    " Use the kalisi theme!
let g:airline_powerline_fonts=1                   " Enable powerline fonts.
set noshowmode                                    " Don't show mode in command line.
let g:airline#extensions#tabline#enabled=1        " Show the tabline.
let g:airline#extensions#tabline#buffer_nr_show=1 " Show buffer numbers.
let g:airline#extensions#tabline#show_tabs=0      " Don't show tabs in tabline.

