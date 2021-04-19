source ~/.vimrc
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" #Plug '~/my-prototype-plugin'

Plug 'numirias/semshi'
Plug 'VundleVim/Vundle.vim'
Plug 'kshenoy/vim-signature'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-repeat'
Plug 'mbbill/undotree'
Plug 'bkad/camelcasemotion'
Plug 'nvie/vim-flake8'
" Plug 'argtextobj.vim'
" Plug 'matchit.zip'
Plug 'konfekt/fastfold'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-clap'
Plug 'lilydjwg/colorizer'
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold'
Plug 'zah/nim.vim'
Plug 'erietz/vim-terminator'
Plug 'Shougo/echodoc.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'edkolev/tmuxline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Plug 'tweekmonster/impsort.vim'
Plug 'vim-scripts/IndexedSearch'
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'wellle/targets.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'tell-k/vim-autopep8'
Plug 'nvie/vim-flake8'
Plug 'google/yapf'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'honza/vim-snippets'
Plug 'kalekundert/vim-coiled-snake'
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'
Plug 'blueyed/vim-diminactive'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'junegunn/fzf.vim'
Plug 'desmap/ale-sensible' | Plug 'w0rp/ale'
Plug 'mhinz/vim-startify'
Plug 'simnalamburt/vim-mundo'
Plug 'airblade/vim-rooter'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'othree/html5-syntax.vim'
Plug 'posva/vim-vue'
Plug '907th/vim-auto-save'
Plug 'psliwka/vim-smoothie'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jremmen/vim-ripgrep'
Plug 'justinmk/vim-sneak'
Plug 'wakatime/vim-wakatime'
Plug 'sheerun/vim-polyglot'
Plug 'scr1pt0r/crease.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'liuchengxu/vista.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}



" Initialize plugin system
call plug#end()

"source $HOME/.config/nvim/config/init.vimrc
source $HOME/.config/nvim/config/settings.vimrc
" source $HOME/.config/nvim/config/coc_new.vimrc
" source $HOME/.config/nvim/config/undotree.vimrc
source $HOME/.config/nvim/config/styles.vimrc
source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/keys.vimrc
source $HOME/.config/nvim/config/fzf.vimrc
source $HOME/.config/nvim/config/folds.vimrc
" source $HOME/.config/nvim/config/ultisnips.vimrc
source $HOME/.config/nvim/config/custom_highlights.vimrc
source $HOME/.config/nvim/config/coc.vimrc

"enable true colors in vim
"
set termguicolors
set redrawtime=10000
" set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"             \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
"             \,sm:block-blinkwait175-blinkoff150-blinkon175
"
"         :set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
"           \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
"           \,sm:block-blinkwait175-blinkoff150-blinkon175

set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175

highlight Cursor gui=reverse guifg=NONE guibg=NONE
highlight Cursor gui=NONE guifg=bg guibg=fg
