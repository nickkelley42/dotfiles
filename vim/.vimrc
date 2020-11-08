" syntax highlighting
syntax enable

" line numbering
set number
" set relativenumber

" Timeout causes certain commands to be slow after pressing ESC.
set timeoutlen=1000 ttimeoutlen=0

" tabs
set tabstop=2
set shiftwidth=0
set expandtab
set smartindent

" allows me to fold stuff
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Mouse integration is nice sometimes
set mouse=a

" Handlebars abbreviations, see https://github.com/mustache/vim-mustache-handlebars
let g:mustache_abbreviations = 1

" line length stuff
set colorcolumn=120

"filetype plugins
filetype plugin on

" This makes it so that the :make command will automatically write
set autowrite

" make sure that the backups/swap files don't go in 
" the current directory (interferes with ember build)
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo

" pathogen package manager (for misc plugins)
execute pathogen#infect()

