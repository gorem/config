set backspace=indent,eol,start
filetype plugin indent on
syntax on

if has("vms")
  set nobackup
else
  set backup
  set backupdir=~/Documents/.backups//
  set undofile
  set undodir=~/Documents/.backups//
endif
set history=50
set ruler
set showcmd
set incsearch

set mouse=a
set number
set ic
set expandtab

map <C-o> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
call plug#end()
