set backspace=indent,eol,start
filetype plugin indent on
syntax on

if has("vms")
  set nobackup
else
  set backup
  set backupdir=~/.backups//
  set undofile
  set undodir=~/.backups//
endif
set history=50
set ruler
set showcmd
set incsearch