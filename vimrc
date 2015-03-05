" Leader
let mapleader = ","

filetype plugin indent on

set nocompatible
set encoding=utf-8
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set synmaxcol=800 " don't try to highlight long lines
set cursorline    " highlight the line of the cursor
set showcmd     " show partial commands below the status line
set shell=bash  " avoids munging PATH under zsh
let g:is_bash=1 " default shell syntax
set history=200 " remember more Ex commands
set scrolloff=3 " have some context around the current line always on screen

" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden

" Auto-reload buffers when file changed on disk
set autoread

" Disable swap files; systems don't crash that often these days
set updatecount=0

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Numbers
set number
set numberwidth=5

"" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

"" Searching
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter
set gdefault                      " have :s///g flag by default on

" Get off my lawn
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>

" yank to system clipboard
map <leader>y "*y

" paste lines from unnamed register and fix indentation
nmap <leader>p pV`]=
nmap <leader>P PV`]=

" In command-line mode, C-a jumps to beginning (to match C-e)
cnoremap <C-a> <Home>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Quick buffer navigation
map <D-e> :bp<bar>sp<bar>bn<bar>bd<CR>
map <D-]> :bn<CR>
map <D-[> :bp<CR>
imap <D-]> <ESC>:bn<CR>
imap <D-[> <ESC>:bp<CR>

" move lines up/down in visual mode with ctrl-j/k
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" insert newlines without dropping into insert mode
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

" engage pathogen
execute pathogen#infect()

" kalisi color theme
" colorscheme kalisi
colorscheme molokai
set background=dark
set t_Co=256

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" airline
let g:airline_theme='kalisi'
let g:airline#extensions#tabline#enabled = 1

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Index ctags from any project, recursively
map <Leader>ct :!ctags -R .<CR>

" tagbar
nmap <F8> :TagbarToggle<CR>
nmap <Leader>rt :TagbarToggler<CR>

" nerdtree
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$']
noremap <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDCommenter
map <D-/> <plug>NERDCommenterToggle<CR>
imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i
map <leader>/ <plug>NERDCommenterToggle<CR>

