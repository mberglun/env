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
"NeoBundle 'hynek/vim-python-pep8-indent'
"NeoBundle 'nvie/vim-flake8'
"NeoBundle 'scrooloose/syntastic'
NeoBundle 'klen/python-mode'
NeoBundleCheck

"" Generic
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation (must be after neobundle init)
set splitright

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <S-Tab> <gv
let g:pymode_rope_goto_definition_bind = '<leader>g'
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w' || strpart( getline('.'), col('.')-2, 1 ) == "."
    return "\<C-Y>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

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

" let g:pymode_folding = 0
set foldmethod=indent
set foldlevel=9         " No indentation by default

nmap <leader>0 :set foldlevel=0<CR>
nmap <leader>1 :set foldlevel=1<CR>
nmap <leader>2 :set foldlevel=2<CR>
nmap <leader>3 :set foldlevel=3<CR>
nmap <leader>4 :set foldlevel=4<CR>
nmap <leader>5 :set foldlevel=5<CR>
nmap <leader>6 :set foldlevel=6<CR>
nmap <leader>7 :set foldlevel=7<CR>
nmap <leader>8 :set foldlevel=8<CR>
nmap <leader>9 :set foldlevel=9<CR>

set colorcolumn=80
highlight ColorColumn ctermbg=DarkBlue
