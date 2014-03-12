set nocompatible                " choose no compatibility with legacy vi

"" Neobundle setup
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'

"" Plugins
NeoBundle 'TeX-PDF'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-obsession'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'gregsexton/MatchTag'
NeoBundle 'YankRing.vim'
NeoBundle 'matchit.zip'
NeoBundle 'ivanov/vim-ipython'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'scrooloose/syntastic'
"NeoBundle 'klen/python-mode'
NeoBundleCheck

"" Generic
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation (must be after neobundle init)

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <S-Tab> <gv

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" Show n lines between the window border and cursor
set scrolloff=2

" More sensible list chars
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
if !has('win32') && (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
  let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
endif

"" Keymaps
let mapleader = ","
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <silent> ,/ :nohlsearch<CR>

" Don't redraw while executing macros (good performance config)
set lazyredraw

" How many tenths of a second to blink when matching brackets
set matchtime=2

set colorcolumn=80
highlight ColorColumn ctermbg=DarkBlue
