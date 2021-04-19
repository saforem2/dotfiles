"-----------------------------------------
"	Chromatica settings
"-----------------------------------------
" Plugin 'arakashic/chromatica.nvim'
let g:chromatica#libclang_path='/usr/local/opt/llvm/lib'

" 'w0rp/ale' {{{
let g:ale_python_pylint_options = "--init-hook='import sys; sys.path.append(\".\")'"
let g:ale_completion_enabled = 1
let g:ale_fixers = {}
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_warn_about_trailing_whitespace=0
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '➤'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %code: %%s %s [%severity%]'

nmap <silent> <C-M> <Plug>(ale_previous_wrap)
nmap <silent> <C-m> <Plug>(ale_next_wrap)
" }}}

" vim-autoformat {{{
nnoremap <F7> :Autoformat
" }}}

" nuake {{{
" nnoremap <leader> , :Nuake<CR>
" nnoremap <leader> ty :call LanguageClient#textDocument_hover()<CR>
nnoremap <C-,> :Nuake<CR>
nnoremap <F8> :Nuake<CR>
inoremap <F8> <C-\><C-n>:Nuake<CR>
tnoremap <F8> <C-\><C-n>:Nuake<CR>
" }}}
"
" vim-airline {{{
" Plugin	 'vim-airline/vim-airline-themes'
" Plugin	 'bling/vim-airline'
let g:airline#extensions#ale#enabled = 0
let g:airline_theme='distinguished'
" let g:airline_theme='sams_minimalist'
" let g:airline_theme='ThemerVimLightline'
" let g:airline_theme='sams_spacemacs'
" let g:airline_theme='sams_minimalist'
" Also good themes:
"   - base16_monokai
"   - simple
"   - base16color
"   - wombat
"   - vice
"   - ouu
"   - lucius
"   - hybridline
" - - badcat

let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tmuxline#enabled=0
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#switch_buffers_and_tabs=0
" let g:airline#extensions#tabline#buffer_nr_format = '%s '
"
" let g:airline#extensions#tabline#buffer_idx_mode=2
"let g:airline#extensions#tabline#buffer_min_count = 0
" configure how buffer numbers should be formatted with |printf()|. >

" change the display format of the buffer index >
let g:airline#extensions#tabline#buffer_idx_format = {
    \ '0': '0 ',
    \ '1': '1 ',
    \ '2': '2 ',
    \ '3': '3 ',
    \ '4': '4 ',
    \ '5': '5 ',
    \ '6': '6 ',
    \ '7': '7 ',
    \ '8': '8 ',
    \ '9': '9 '
    \}

let g:airline_skip_empty_sections=1
"
let g:airline_detect_modified=1
let g:airline_detect_spell=1
let g:airline#extensions#branch#enabled=1
" let g:airline#extensions#branch#empty_message=''
let g:airline#extensions#branch#format = 1
" let g:airline#extensions#tagbar#flags = 's'
" let g:airline#extensions#hunks#enabled = 1
"let g:airline#extensions#tagbar#currenttag('%s ', '')}'
" autocmd BufEnter * nested :call tagbar#autoopen(0)
" let g:airline_section_b = '%{getcwd()}'
"let g:airline_section_z = '%{tagbar#currenttag('%s ','')}'
" let g:airline_section_z = percentage, line number

let g:airline_section_c = '%t'
" let g:airline_section_x = '%y %{kite#statusline()}'
let g:airline_section_z = '%p%% %l:%c'
" let g:airline_section_z = '%l/%L, %c'

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
" always show statusline
set laststatus=2
" air-line
let g:airline_powerline_fonts = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#whitespace#enabled = 0

" unicode symbols
"let g:airline_symbols.space = "\ua0"
"
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
" let g:airline#extensions#tabline#right_alt_sep = '❙'

" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
"
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" 'patched': {
"             'lock': u'\uE0A2',
"             'network': u'\uE0A2',
"             'separator': u'\uE0C6',
"             'separator_thin': u'\uE0C6'
"         }

" airline symbols
" let g:airline_left_sep = ''
" let g:airline_left_sep = "\uE0B8"
" let g:airline_left_sep = ""
" let g:airline_left_alt_sep = ''
" let g:airline_left_alt_sep = "\uE0B9"
" let g:airline_right_sep = ''
" let g:airline_right_sep = "\uE0B8"
" let g:airline_right_sep = ""
" let g:airline_right_alt_sep = ''
" let g:airline_right_alt_sep = "\uE0B9"
" }}}

" sheerun/vim-polyglot {{{
let g:polyglot_disabled = ['latex']
" }}}

" echodoc {{{
" Plugin 'Shougo/echodoc.vim'
let g:echodoc_enable_at_startup = 1
let g:echodoc#type = 'signature'
" }}}
"
"terminus {{{
" Plugin	 'wincent/terminus'
let g:TerminusBracketedPaste=0
" }}}

" nerdcommenter {{{
"-----------------------------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1


"-------------------------
"	goyo settings
"-------------------------
function! s:goyo_enter()
  if has('gui_running')
    set fullscreen
    set background=light
    set linespace=7
  elseif exists('$TMUX')
    silent !tmux set status off
  endif
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  if has('gui_running')
    set nofullscreen
    set background=dark
    set linespace=0
  elseif exists('$TMUX')
    silent !tmux set status on
  endif
 " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
"
" changing from the default 80 to accomodate for UndoTree panel
let g:goyo_width = 104
let g:goyo_linenr = 1



"-------------------------------------------
"	vimtex settings
"-------------------------------------------
" Plugin	 'lervag/vimtex'
let g:vimtex_enabled=1
" let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor = 'latex'
let g:vimtex_fold_enabled = 1
" let g:vimtex_view_method = 'skim'
let g:vimtex_view_automatic = 1
let g:vimtex_complete_recursive_bib = 1
let g:vimtex_indent_enabled = 1
set conceallevel=2
" set concealcursor=nvc
let g:tex_conceal="adgms"

let g:vimtex_latexmk_progname= '/usr/local/bin/nvr'
" let g:vimtex_latexmk_options="-pdfps -pdflatex='pdflatex -file-line-error interaction=nonstopmode %0 %S --shell-escape -synctex=1'"
" let g:vimtex_latexmk_options="-pdf -pdflatex='pdflatex -file-line-error -shell-escape -synctex=1'"
" let g:vimtex_compiler_latexmk = {
"       \  'callback' : 0,
"       \}
" let g:vimtex_fold_enabled = 0
let g:vimtex_toc_resize = 0
let g:vimtex_toc_hide_help = 1
" let g:vimtex_indent_enabled = 1
let g:vimtex_latexmk_enabled = 1
let g:vimtex_latexmk_callback = 1
let g:vimtex_complete_recursive_bib = 1
let g:vimtex_view_method = 'skim'
let g:vimtex_complete_close_braces = 1
let g:vimtex_quickfix_mode = 2
let g:vimtex_quickfix_open_on_warning = 1
let g:vimtex_quickfix_ignored_warnings = [
        \ 'Underfull',
        \ 'Overfull',
        \ 'specifier changed to',
      \ ]

" Disable all warnings
" let g:vimtex_quickfix_latexlog = {'default' : 0}

" Disable undefined reference warnings
let g:vimtex_quickfix_latexlog = {'references' : 0}

" Disable overfull/underfull \hbox and all package warnings
let g:vimtex_quickfix_latexlog = {
      \ 'overfull' : 0,
      \ 'underfull' : 0,
      \ 'packages' : {
      \   'default' : 0,
      \ },
          \}

let g:vimtex_compiler_latexmk = {
        \ 'background' : 1,
        \ 'build_dir' : '',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'options' : [
        \   '-xelatex',
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \   '-shell-escape',
        \ ],
        \}

let g:vimtex_compiler_engine='lualatex'

"---------------------------------------
"	vim-workspace settings
"---------------------------------------
" Plugin	 'bagrat/vim-workspace'
let g:workspace_powerline_separators = 1
let g:workspace_tab_icon = "\uf00a"
let g:workspace_left_trunc_icon = "\uf0a9"
let g:workspace_pwowerline_separators = 0


"-------------------------------------------------------------------
"	vim-devicons settings
"-------------------------------------------------------------------
" Plugin 'edkolev/tmuxline.vim'
let g:tmuxline_preset = {
      \'a'    : '#S',
	  \'win'  : '#I #W',
	  \'cwin' : '#I #W',
      \'y'    : '%R'}
" let g:tmuxline_preset = {
"     \'win'	: ['#I #W'],
"     \'cwin'	: ['#I #W'],
"     \'options': {
"     \'status-justify': 'left'}}
	" \'x'	: ['#()', '%h %d'],
	" \'y'	: ['%l:%M'],
	" \'z'	: ['#(whoami)']}
" let g:tmuxline_theme = 'minimalist'
" let g:tmuxline_theme = 'airline_visual'


"-------------------------------------------------------------------
"	vim-devicons settings
"-------------------------------------------------------------------
" Plugin   'ryanoasis/vim-devicons'
"loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to virim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
"adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
" adding to flagship's statusline
let g:webdevicons_enable_flagship_statusline = 1
" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 0
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" enable folder/directory glyph flag
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1
" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1
" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0

"""""""""""""""""""""""""""""""""""""""""""""
" vim-nerdtree settings {{{
" Plugin	'tiagofumo/vim-nerdtree-syntax-highlight'
" you can add these colors to your .vimrc to help customizing
let s:brown = "#171717"
let s:aqua =  "#63e7f0"
let s:blue = "#048ac7"
let s:darkBlue = "#44788E"
let s:purple = "#834F79"
let s:lightPurple = "#834F79"
let s:red = "#ff005b"
let s:beige = "#F5C06F"
let s:yellow = "#F09F17"
let s:orange = "#D4843E"
let s:darkOrange = "#F16529"
let s:pink = "#ff00a0"
let s:salmon = "#EE6E73"
let s:green = "#8FAA54"
let s:lightGreen = "#31B53E"
let s:white = "#FFFFFF"
let s:rspec_red = '#FE405F'
let s:git_orange = '#F54D27'

" highlight full name (not only icons)
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
" }}}
"""""""""""""""""""""""""""""""""""""""""""""
" vim-nerdtree-syntax-highlight settings {{{
" Plugin	'tiagofumo/vim-nerdtree-syntax-highlight'
" you can add these colors to your .vimrc to help customizing
let s:brown = "#171717"
let s:aqua =  "#63e7f0"
let s:blue = "#048ac7"
let s:darkBlue = "#44788E"
let s:purple = "#834F79"
let s:lightPurple = "#834F79"
let s:red = "#ff005b"
let s:beige = "#F5C06F"
let s:yellow = "#F09F17"
let s:orange = "#D4843E"
let s:darkOrange = "#F16529"
let s:pink = "#ff00a0"
let s:salmon = "#EE6E73"
let s:green = "#8FAA54"
let s:lightGreen = "#31B53E"
let s:white = "#FFFFFF"
let s:rspec_red = '#FE405F'
let s:git_orange = '#F54D27'

" highlight full name (not only icons)
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
" }}}
"""""""""""""""""""""""""""""""""""""""
" undotree settings {{{
nnoremap <F12> :UndotreeToggle
let g:undotree_CustomUndotreeCmd = 'vertical 32 new'
let g:undotree_CustomDiffpanelCmd= 'belowright 12 new'
" }}}
"""""""""""""""""""""""""""""""""""""""
" easyalign settings {{{
" set easy-align options
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}
"""""""""""""""""""""""""""""""""""""""
" rainbow parentheses settings {{{
let g:rainbow_active = 1
let g:rainbow_guifgs = [
            \'#af87ff',
            \'#4df840',
            \'#f92672',
            \'#51c3ff',
            \'#4df840',
            \'#fa8419',
            \'#23cfd5',
            \'#fff26d',
            \'#f553bf',
            \'#2196f3',
            \'#ffc107',
            \'#3f51b5',
            \'#f553bf',
            \'#2196f3',
            \'#ffc107',
            \'#3f51b5',
            \'#f553bf',
            \'#2196f3',
            \'#ffc107',
            \'#3f51b5',
            \'#f553bf',
            \'#2196f3',
            \'#ffc107',
            \'#e91e63',
            \]
" hi lv16c guifg=#f44336 gui=bold
" hi lv15c gui=bold
" hi lv14c gui=bold
" hi lv13c gui=bold
" hi lv12c gui=bold
" hi lv11c gui=bold
" hi lv10c gui=bold
" hi lv9c gui=bold
" hi lv8c gui=bold
" hi lv7c gui=bold
" hi lv6c gui=bold
" hi lv5c gui=bold
" hi lv4c gui=bold
" hi lv3c gui=bold
" hi op_lv0 guifg=#9c27b0, gui=bold
" hi lv16c  guibg=NONE  guifg=#fa2573 gui=NONE
hi lv16c  guibg=NONE  guifg=#ff85ff gui=NONE
hi op_lv0 guibg=NONE  guifg=#ffff00 gui=bold
hi op_lv16 guibg=NONE  guifg=#fd971f gui=bold
" hi rainbowParensShell16          guibg=NONE guifg=#03a9f4 gui=bold
" hi rainbowParensShell15          guibg=NONE guifg=#ffeb3b gui=bold
" hi rainbowParensShell14          guibg=NONE guifg=#673ab7 gui=bold
" hi rainbowParensShell13          guibg=NONE guifg=#4caf50 gui=bold
" hi rainbowParensShell12          guibg=NONE guifg=#e91e63 gui=bold
" hi rainbowParensShell11          guibg=NONE guifg=#009688 gui=bold
" hi rainbowParensShell10          guibg=NONE guifg=#ff5722 gui=bold
" }}}
"""""""""""""""""""""""""""""""""""""""
" pythonsense settings {{{
let g:is_pythonsense_suppress_motion_keymaps = 1
" }}}
"""""""""""""""""""""""""""""""""""""""
" TrimWhitespace settings {{{
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

command! TrimWhitespace call TrimWhitespace()
nmap <Leader>tw :call TrimWhitespace()<CR>

autocmd BufWritePre *.py :%s/\s\+$//e
" }}}
"
"
"""""""""""""""""""""""""""""""""""""""
" animate.vim settings {{{
nnoremap <silent> <C-Up>        :call animate#window_delta_height(10)<CR>
nnoremap <silent> <C-Down>      :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <C-Left>      :call animate#window_delta_width(10)<CR>
nnoremap <silent> <C-Right>     :call animate#window_delta_width(-10)<CR>
" }}}
"
"
"  -+- -+- -+- -+- -+- -+- -+- -+- -+- -+- -+- -+- -+- -+- -+-
" -+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
" -*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
" =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*
" =+=+=+=+=+=+=+=+=+=+=+=+=+=+=+
" -*--*--*--*--*--*--*--*--*--*--*--*--*--*--*-
" vim-which-key settings {{{
nnoremap <silent> <leader> :WhichKey '<leader>'<CR>
" }}}
"
"
" fzf-preview.vim {{{
set runtimepath+=/usr/local/opt/fzf
" }}}
"
"
"
" vim-rooter {{{
let g:rooter_patterns = ['Rakefile', '.git/']
" }}}
"

" vim-bookmarks {{{
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_center = 1
highlight BookmarkSign ctermbg=NONE guifg=#f44336
highlight BookmarkAnnotationSign guibg=NONE guifg=#4df840
highlight BookmarkLine guibg=#404040
highlight BookmarkAnnotationLine guibg=#404040 

nmap <Leader>m<Leader> <Plug>BookmarkToggle
nmap <Leader>mi <Plug>BookmarkAnnotate
nmap <Leader>ma <Plug>BookmarkShowAll
nmap <Leader>mj <Plug>BookmarkNext
nmap <Leader>mk <Plug>BookmarkPrev
nmap <Leader>mc <Plug>BookmarkClear
nmap <Leader>mx <Plug>BookmarkClearAll
nmap <Leader>mkk <Plug>BookmarkMoveUp
nmap <Leader>mjj <Plug>BookmarkMoveDown
nmap <Leader>mg <Plug>BookmarkMoveToLine
" }}}

