" use vim, rather than vi, settings
set nocompatible

" set default encoding to UTF-8
set encoding=utf-8
set notermguicolors

" enable syntax highlighting
syntax on
"
" enable file type detection
filetype plugin indent on

" do not always show the right scroll bar
set guioptions-=r
" allow backspacing over everything
set backspace=start,eol,indent

" show cursor position
set ruler
" display incomplete commands
set showcmd
" display completion matches in a status line
set wildmenu
" display a few lines of context around the cursor
" while scrolling
set scrolloff=5

" make netrw adapt cwd automatically
let g:netrw_keepdir=0
" correct netrw 'scp' command silent option
let g:netrw_scp_cmd='scp -s'
" disable using of external mkdir for netrw
" since it requires umask too
let g:netrw_localmkdir=''

packadd! dracula_pro
let g:dracula_colorterm = 0
colorscheme dracula_pro
let mapleader = "\<Space>"
let maplocalleader = ";"
inoremap jj <ESC>

"Highlights
syntax on
set ruler
set colorcolumn=120
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set list

"Editor layout
set ruler
set number
set colorcolumn=80
set laststatus=2
let g:bufferline_active_buffer_left = ''
let g:bufferline_active_buffer_right = ''
map <F2> :NERDTreeToggle<CR>
map <Leader>t :NERDTreeToggle<CR>
map <Leader><tab> :Buffer<CR>
map <Leader>p :GFiles<CR>

"Style
au BufNewFile,BufRead *.jsx let b:syntastic_checkers = ['jsxhint']
filetype plugin indent on
set autoindent

set fileformats=unix,dos
set fileformat=unix
set backspace=indent,eol,start

set ignorecase
set smartcase

set incsearch
set hlsearch

autocmd FileType typescript nmap <buffer> <Leader>y : <C-u>echo tsuquyomi#hint()<CR>
let g:tsuquyomi_completion_detail = 1
autocmd FileType typescript setlocal completeopt+=menu,preview

autocmd VimEnter,VimLeave * silent !tmux set status 

set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
