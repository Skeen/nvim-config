" Remember to use PlugInstall
call plug#begin('~/.vim/plugged')
" Svelte plugins
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
call plug#end()

" Share clipboard with system
set guioptions+=a
set clipboard^=unnamed,unnamedplus

" Enable filetype plugins
syntax on
filetype on
filetype plugin on
filetype indent on

" Work with logical lines, rather than actual lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Allow normal window movement within terminal windows
tnoremap <C-w><C-w> <C-\><C-n><C-w><C-w>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w><Left> <C-\><C-n><C-w><Left>
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w><Down> <C-\><C-n><C-w><Down>
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w><Up> <C-\><C-n><C-w><Up>
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <C-w><Right> <C-\><C-n><C-w><Right>

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=3

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Show line numbers
set number

" Turn on the WiLd menu
set wildmenu

" Highlight whitespace at the end of a line with red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Don't remember position in gitcommit files
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])
