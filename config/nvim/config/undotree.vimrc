set nobackup
set noswapfile
set nowritebackup
set undolevels=10000  " use many levels of undo
set history=10000

if has("persistent_undo")
    set undodir=$HOME/.undodir"
    set undofile
endif
