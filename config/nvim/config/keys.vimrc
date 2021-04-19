" Add to ~/.vimrc

" F5 opens a Terminal window with its current directory set to the current
" file's parent.
" [The command uses an extra CR at the end to get rid of the "Continue"
" prompt, since it will always run over a one-line status bar. :silent doesn't
" help when the command itself is too long for the status bar. Putting the
" command into a variable before executing may be another way to do it.
" Even better: in a function, save sc (showcmd), set nosc, run cmd, restore sc.]
map <F5> :!osascript -e 'tell app "Terminal" to activate do script with command "cd " & quoted form of "%:p:h"'<CR><CR>

" Shift-F5 opens current buffer's folder in Finder, selecting the current file
" if it exists. Works for both directories and files.
map <S-F5> :silent execute '![ -f "%:p" ] && open -R "%:p" \|\| open "%:p:h"'<CR>"

" Use F12 to clean up most syntax highlighting problems
noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
"
"test a python program using F9, and run it in the debugger with F10
noremap <buffer> <F10> :exec '!python3 -m pudb' shellescape(@%, 1)<CR>
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<CR>
"
" split line under cursor & remove trailing whitespace & autoindent
nnoremap " :keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>


" use Ctrl_j and Ctrl+k to jump between errors {{{
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" }}}


" jedi go-to-definition
nnoremap <silent> <buffer> <localleader>d :call jedi#goto_definitions()<CR>


" Insert newline without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>


nmap <F3> :NERDTreeToggle<CR>


nnoremap <space> za
noremap % v%

" get the name of the current file
nnoremap ?? :echo expand('%:p')<CR>


nmap zuz <Plug>(FastFoldUpdate)


">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		show tagbar
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
nmap <F9> :TagbarToggle<CR>


"Map F10 to spell-check local buffer only
map <F10> :setlocal spell! spelllang=en_us<CR>



nmap \q nohlsearch
nnoremap <esc><esc> :silent! nohls<cr>

"make searches always appear in the center of page
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz


" set ctrl-P settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" Reload the vimrc
nmap <leader>vr :so ~/.vimrc


"set easy motion settings
" <Leader>f{char} to move to {char}
" map <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

" s {char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)


" Move to line
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)

" move to word
" map <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)



" define camelCaseMotion mappings
"call camelcasemotion#CreateMotionMappings('<leader>')
map W <Plug>CamelCaseMotion_w
map B <Plug>CamelCaseMotion_b
map E <Plug>CamelCaseMotion_e
sunmap W
sunmap B
sunmap E


">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"				auto pairs settings
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
" let g:AutoPairsShortcutFastWrap = '<C-e>'
" let g:AutoPairsShortcutJump = '<C-o>'
if has('nvim')
	nmap <BS> <C-W>h
endif



""""""""""""""""""""""""""""""""
" Move a line of text using ALT+[jk]
"nnoremap <C-J> :m .+1<CR>==
nnoremap <M-K> :m .-2<CR>==
inoremap <M-J> <Esc>:m .+1<CR>==gi
inoremap <M-K> <Esc>:m .-2<CR>==gi
vnoremap <M-J> :m '>+1<CR>gv=gv
vnoremap <M-K> :m '<-2<CR>gv=gv<F23>

" cmap W w
" cmap WQ wq
" cmap wQ wq
" " cmap qw wq
" cmap Q q
" cmap Tabe tabe
cmap w!! w !sudo tee % >/dev/null
"nore ; :
nore , ;




" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>


nnoremap <tab> %
vnoremap <tab> %

" the vnoremap command maps // in visual mode
" to run the commands y/<C-R>"<CR> which copies
" the visually selected text, then starts a search
" command for that text.
vnoremap // y/<C-R>"<cr>

" Search mappings: These make it so that going to the next one in a search
" will center on the line it's found in
map N Nzz
map n nzz

" Set tab spaces to two spaces for tex files
autocmd Filetype tex setlocal ts=2 sw=2 expandtab

" Use K to run cppman to open C++ documentation
command! -nargs=+ Cppman silent! call system("tmux split-window cppman " . expand(<q-args>))
autocmd FileType cpp nnoremap <silent><buffer> K <Esc>:Cppman <cword><CR>
" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')
" Remove any trailing whitespace that is in the file
" autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif


" ----------------------------------
" MAPPINGS FOR DEALING WITH SPLITS
" ----------------------------------
" This way if you want to jump between splits you can use C-hjkl. If you want
" to 'create' a split you can use cC-hjkl. If you want to maximize a split you
" can use gC-hjkl. And if you want to delete a split you can use dC-hjkl.
"
" Map a key to make the current window as large as possible (without closing
" other windows):
nnoremap <C-+> <C-W>_<C-W><Bar>
"
" If you want specifically 70% instead of maximized that you could use
nnoremap g<C-j> <C-w> :let &winheight = &lines * 6 / 10<cr>
nnoremap g<C-l> <C-w> :let &winwidth = &columns * 6 / 10<cr>
nnoremap <C-j>  <C-w>j
nnoremap <C-k>  <C-w>k
nnoremap <C-h>  <C-w>h
nnoremap <C-l>  <C-w>l
nnoremap <S-Down> :wincmd j<CR>
nnoremap <S-Up> :wincmd k<CR>
nnoremap <S-Left> :wincmd h<CR>
nnoremap <S-Right> :wincmd l<CR>
nnoremap c<C-j> :bel sp new<cr>
nnoremap c<C-k> :abo sp new<cr>
nnoremap c<C-h> :lefta vsp new<cr>
nnoremap c<C-l> :rightb vsp new<cr>
nnoremap g<C-j> <C-w>j<C-w>_
nnoremap g<C-k> <C-w>k<C-w>_
nnoremap g<C-h> <C-w>h<C-w>_
nnoremap g<C-l> <C-w>l<C-w>_
nnoremap d<C-j> <C-w>j<C-w>c
nnoremap d<C-k> <C-w>k<C-w>c
nnoremap d<C-h> <C-w>h<C-w>c
nnoremap d<C-l> <C-w>l<C-w>c
"
" Close buffer (without closing window)
nnoremap <expr><leader>w len(getbufinfo("")[0].windows) > 1 ?
    \ ":close<CR>" :
    \ (bufnr("") == getbufinfo({"buflisted": 1})[-1].bufnr ? ":bp" : ":bn")."<bar>bd #<CR>"


" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>k :bp<CR>
nnoremap <Leader>j :bn<CR>
"nnoremap <Leader>d :bd<CR>
nnoremap <Leader>g :e#<CR>
" set showmode	" show current mode down the bottom
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

nnoremap <leader>xp :set winwidth=86<CR>



"make <c-l> clear the highlight as well as redraw
" nnoremap <C-L> :nohls<CR><C-L>
" inoremap <C-L> <C-O>:nohls<CR>
map Y y$


" nnoremap <F4> :buffers<CR>:buffer<Space>
" nnoremap <F4> :Buffers<CR>:buffer<Space>
" nnoremap <leader>, :Buffers<CR>

" ---------------------------------------------------------------------------
"  Handling Whitespace
" ---------------------------------------------------------------------------

"  strip trailing whitespace
map <LocalLeader>ks :%s/\s\+$//g<CR>

"  convert tabs to spaces
map <LocalLeader>kt :%s/\t/  /g<CR>

"  kill DOS line breaks
map <LocalLeader>kd :%s///g<CR>

" ---------------------------------------------------------------------------
"  Copy/Paste Shortcuts
" ---------------------------------------------------------------------------

" copy to system clipboard
vmap <LocalLeader>cc "+y
set clipboard=unnamed

" paste in NORMAL mode from system clipboard (at or after cursor)
nmap <LocalLeader>V "+gP
nmap <LocalLeader>v "+gp

" paste in INSERT mode from Vim's clipboard (unnamed register)
" imap vp <ESC>pa

" paste in INSERT mode from system clipboardl
" imap vv <ESC>"+gpa

" paste in COMMAND mode from Vim's clipboard (unnamed register)
" cmap vp <C-r>"

" paste in COMMAND mode from system clipboard
" cmap vv <C-r>+

" --------------------------------------------------------------------------
"  Tab Navigation
" --------------------------------------------------------------------------

set guitablabel=%N\ %t\ %M\ %r

" quick open new tab
map <LocalLeader>t :tabnew<CR>

" C-TAB and C-SHIFT-TAB cycle tabs forward and backward
nmap <C-tab> :tabnext<CR>
imap <C-tab> <C-o>:tabnext<CR>
vmap <C-tab> <C-o>:tabnext<CR>
nmap <C-S-tab> :tabprevious<CR>
imap <C-S-tab> <C-o>:tabprevious<CR>
vmap <C-S-tab> <C-o>:tabprevious<CR>


" easier way to get out of insert mode
" inoremap jk <esc>
" inoremap jj <esc>

" Preserve selection when indenting
vmap > >gv
vmap < <gv

" Syntastic settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_python_python_exec = '/usr/bin/python2.7/'
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1

"sideways conf - for swapping arguments around
nnoremap <leader>sh :SidewaysLeft<cr>
nnoremap <leader>sl :SidewaysRight<cr>

"text objects for function args
omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI

" What is the current syntax highlighting group?
" map <F6> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#") . " BG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"bg#")<CR>

map <F6> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


" highlight last inserted text
nnoremap gV `[v`]

" Keep cursor centered
" nnoremap j gjzz
" nnoremap k gkzz

"	Jump to tag
nn <M-g> :call JumpToDef()<cr>
ino <M-g> <esc>:call JumpToDef()<cr>i

" ,ls to forward search
map ,ls :w<CR>:silent !/Applications/Skim.app/Contents/SharedSupport/displayline -r <C-r>=line('.')<CR> %<.pdf %<CR><CR>

 " ,lv to display pdf
 " map ,lv <leader>lv
" let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'


set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

nmap <silent> <leader>rr :Semshi rename<CR>
" nmap <silent> <Tab> :Semshi goto name next<CR>
" nmap <silent> <S-Tab> :Semshi goto name prev<CR>
nmap <silent> <C-a> :Semshi goto name next<CR>
nmap <silent> <C-x> :Semshi goto name prev<CR>

nmap <silent> <C-n> :Semshi goto class next<CR>
nmap <silent> <C-p> :Semshi goto class prev<CR>

nmap <silent> <Tab> :Semshi goto function next<CR>
nmap <silent> <S-Tab> :Semshi goto function prev<CR>

nmap <silent> <leader>ee :Semshi error<CR>
" nmap <silent> <leader>ge :Semshi goto error<CR>

" nnoremap <silent> <leader>ge :ALENExt -wrap -error<CR>
nnoremap <silent> ]g :ALENextWrap<CR>
nnoremap <silent> <leader>e :ALENext -wrap -error<CR>

nmap <silent> <leader>vc :VimtexCompile<CR>

" let c = 1
" while c <= 99
"   execute "nnoremap " . c . "gb :" . c . "b\<CR>"
"   let c += 1
" endwhile
"
" jump directly to tab
" execute "map <LocalLeader>".i." ".i."gt<CR>"
" let i=1
" while i<=9
"     execute "map <LocalLeader>".i." ".i."gt"
"     let i+=1
" endwhile
