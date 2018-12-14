" Use vim settings, not vi
set nocompatible

" allow backpacing over everything in insert mode
set backspace=indent,eol,start

" Switch syntax highlighting on
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

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

set number

if has("autocmd")
  filetype plugin indent on
  set tabstop=4
  set shiftwidth=4

  augroup vimrcEx
  au!

  autocmd FileType text set wrap linebreak nolist nonumber

  augroup END

else

  set autoindent

endif

" Start commit messages in insert mode
autocmd FileType gitcommit exec 'au VimEnter * startinsert'

set mouse=a
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
