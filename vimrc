" Vundle
set nocompatible              " required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" Better folding
Plugin 'tmhedberg/SimpylFold'

" Python Indentation
Plugin 'vim-scripts/indentpython.vim'

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" Syntastic
Plugin 'scrooloose/syntastic'

" Super Search
Plugin 'kien/ctrlp.vim'

" PEP8 Checking
Plugin 'nvie/vim-flake8'

" Colorscheme
Plugin 'jnurmine/Zenburn'

" Nerdtree filebrowser
Plugin 'scrooloose/nerdtree'

" Git ingration
Plugin 'tpope/vim-fugitive'

" Powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Javascript syntax highlighting
Plugin 'jelera/vim-javascript-syntax'

" Javascript indentation
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

" Javascript autocomplete brackets
Plugin 'Raimondi/delimitMate'

" More powerful javascript autocompletion
Plugin 'marijnh/tern_for_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Set navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap moving to beginning and end of a line
" nnoremap B 0
" nnoremap $ W

" Colors
set t_Co=256
colorscheme zenburn

" Enable line numbering
set nu

" Enable system clipboard
set clipboard=unnamedplus

" Enable folding with the spacebar
nnoremap <space> za

" Map key to split current line
inoremap <C-o> <CR><Esc>ko

" Move cursor after end of line with insert mode
inoremap fd <Esc>$a

" Remap esc to jk
inoremap jk <Esc>

" Remap oo to add a new line below cursor
nnoremap OO o<Esc>

" Arrows are unvimlike 
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Enable folding
set foldmethod=indent
set foldlevel=99

" PEP 8 Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" Javascript, html and css indentation
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" Standard encoding
set encoding=utf-8

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion = 1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1 

" Enable Python highlighting
let python_highlight_all=1
syntax on

" Let Nerdtree ignore certain files
let NERDTreeIgnore=['\.pyc$', '\~$']

" Powerline always visible
set laststatus=2

" NERDTree Key binding
map <C-n> :NERDTreeToggle<CR>
