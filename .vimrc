syntax enable

call pathogen#runtime_append_all_bundles()
syntax on
filetype plugin indent on

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

set laststatus=2
set statusline=
set statusline+=[%c,\ %l]\  
set statusline+=%<%t%h%m
set statusline+=%=
set statusline+=%40{strftime(\"%I:%M:%S\ \%p\")}\  
set statusline+=%{fugitive#statusline()}


map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove hidden
map <leader>nt :NERDTreeToggle
map <F12> :NERDTreeToggle<cr>
map <leader>r :source $MYVIMRC<cr>
map <F11> :TagbarToggle<cr>

colorscheme wombat
