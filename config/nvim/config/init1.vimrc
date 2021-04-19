" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'arakashic/chromatica.nvim'
Plugin 'numirias/semshi'
Plugin 'VundleVim/Vundle.vim'
Plugin 'kshenoy/vim-signature'
" Plugin 'farmergreg/vim-lastplace'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
" Plugin 'thinca/vim-quickrun'
Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'junegunn/vim-easy-align'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-repeat'
Plugin 'mbbill/undotree'
" Plugin 'godlygeek/tabular'
Plugin 'bkad/camelcasemotion'
" Plugin 'kris2k/a.vim'
Plugin 'bling/vim-airline'
Plugin 'nvie/vim-flake8'
" Plugin 'amadeus/vim-evokai'
" Plugin 'kiddos/malokai.vim'
Plugin 'argtextobj.vim'
Plugin 'matchit.zip'
Plugin 'konfekt/fastfold'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lilydjwg/colorizer'
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'junegunn/goyo.vim'
Plugin 'Shougo/echodoc.vim'
" Plugin	 'junegunn/rainbow_parentheses.vim'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'lervag/vimtex'
Plugin 'zah/nim.vim'
" Plugin 'sheerun/vim-polyglot'
" Plugin 'wincent/terminus'
Plugin 'haya14busa/incsearch.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'edkolev/tmuxline.vim'
" Plugin 'fatih/vim-go'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plugin 'bagrat/vim-workspace'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'roxma/nvim-yarp'
Plugin 'tweekmonster/impsort.vim'
Plugin 'Lenovsky/nuake'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'neoclide/coc-denite'
Plugin 'wellle/targets.vim'
Plugin 'Shougo/denite.nvim'
Plugin 'neoclide/denite-extra'
Plugin 'frazrepo/vim-rainbow'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'google/yapf'
Plugin 'jeetsukumaran/vim-pythonsense'
Plugin 'honza/vim-snippets'
Plugin 'kalekundert/vim-coiled-snake'
Plugin 'camspiers/animate.vim'
Plugin 'camspiers/lens.vim'
Plugin 'blueyed/vim-diminactive'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'liuchengxu/vim-which-key'
" Plugin 'tpope/vim-scriptease'
Plugin 'junegunn/fzf.vim'
Plugin 'yuki-ycino/fzf-preview.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'desmap/ale-sensible' | Plugin 'w0rp/ale'
Plugin 'mhinz/vim-startify'
Plugin 'simnalamburt/vim-mundo'
Plugin 'voldikss/vim-floaterm'
Plugin 'airblade/vim-rooter'
Plugin 'stefandtw/quickfix-reflector.vim'
Plugin 'othree/html5-syntax.vim'
Plugin 'posva/vim-vue'
Plugin '907th/vim-auto-save'
Plugin 'psliwka/vim-smoothie'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'jremmen/vim-ripgrep'


" Plugin   'luochen1990/rainbow'

"
" Plugin  'Vimjas/vim-python-pep8-indent'
" Plugin	 'junegunn/limelight.vim'
" Plugin  'junegunn/fzf.vim'
"
"
" Plugin	 'Chiel92/vim-autoformat'
" Plugin   'wincent/command-t'
" Plugin   'kien/ctrlp.vim'
"

" OLD PLUGINS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Plugin  'ncm2/ncm2-neosnippet'
" Plugin  'autozimu/LanguageClient-neovim'
" Plugin  'ncm2/ncm2'
" Plugin	'ncm2/ncm2-bufword'
" Plugin  'ncm2/ncm2-path'
" Plugin  'ncm2/ncm2-jedi'
" Plugin  'ncm2/ncm2-tmux'
" Plugin  'ncm2/ncm2-match-highlight'
" Plugin  'ncm2/float-preview.nvim'
" Plugin   'tmhedberg/SimpylFold'
" Plugin   'easymotion/vim-easymotion'
" Plugin	 'vim-scripts/indentpython.vim'
" Plugin	 'craigemery/vim-autotag'
" Plugin   'tpope/vim-fugitive'
" Plugin	 'nathanaelkane/vim-indent-guides'
" Plugin	 'jiangmiao/auto-pairs'
" Plugin   'sjl/gundo.vim'
" Plugin	 'ervandew/supertab'
" Plugin   'konfekt/FastFold'
" Plugin   'vim-latex/vim-latex' " (!)
" Plugin  'ludovicchabant/vim-gutentags'
" Plugin  'Chiel92/vim-autoformat'
" Plugin  'davidhalter/jedi-vim'
" Plugin   'zchee/deoplete-clang'
" Plugin   'zchee/deoplete-jedi'
" if has('nvim')
"     Plugin	'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"     Plugin 'Shougo/deoplete.nvim'
"     Plugin 'roxma/nvim-yarp'
"     Plugin 'roxma/vim-hug-neovim-rpc'
" endif
fun! JumpToDef()
	if exists("*GotoDefinition_" . &filetype)
		call GotoDefinition_{&filetype}()
	else
		exe "norm! \<C-]>"
	endif
endf

"Plugin	 'lifepillar/vim-mucomplete'
" mandatory settings for mucomplete
" set completeopt+=menuone,menuone,noinsert,noselect
" set completeopt-=preview
" recommended settings
set shortmess+=c
" for auto completion
"let g:mucomplete#enable_auto_at_startup = 1

" ncm2 recommended settings
" autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
" au misc_group TextChangedI * call ncm2#auto_trigger()

"
"enable true colors in vim
set termguicolors


" hide command and status lines
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        " set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction


" let g:python3_host_prg = '/usr/local/Cellar/python3/3.6.5_1/bin/python3'

nnoremap <S-h> :call ToggleHiddenAll()<CR>

" let g:tmuxline_theme = {
"     \'win'	:	[234, 0],
"     \'cwin'	:	[0, 3]}
"

"Plugin   'valloric/youcompleteme'
" Plugin 'itchyny/lightline.vim'
"
" Plugin 'Yggdroot/indentLine'
" let g:indentLine_char = '│'
" let g:indentLine_color_term=235
"

" All of your Plugins must be added before the following line
call vundle#end()            " required
