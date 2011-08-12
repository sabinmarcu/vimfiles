syntax enable

set showmode
set showcmd

filetype plugin indent on
set nocompatible

set backspace=indent,eol,start
set wildmenu
set wildmode=list:longest

set ignorecase
set smartcase

set number
set ruler

set incsearch
set hlsearch

set wrap

set nobackup
set nowritebackup

map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove hidden

colorscheme vividchalk 
