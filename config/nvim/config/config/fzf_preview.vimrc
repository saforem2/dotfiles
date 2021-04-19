" fzf-preview settings {{{
"
" Commands:
"  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
":FzfPreviewProjectFiles               " Select project files
"
" :FzfPreviewGitFiles                   " Select file from git ls-files
"
" :FzfPreviewDirectoryFiles             " Select file from current directory files (Required [ripgrep](https://github.com/BurntSushi/ripgrep))
"
" :FzfPreviewGitStatus                  " Select git status listed file
"
" :FzfPreviewBuffers                    " Select file buffers
"
" :FzfPreviewAllBuffers                 " Select all buffers
"
" :FzfPreviewProjectOldFiles            " Select project files from oldfiles
"
" :FzfPreviewProjectMruFiles            " Select project mru files with neomru
"
" :FzfPreviewProjectGrep {word or none} " Grep project files from args word (Required [Python3](https://www.python.org/))
"
" :FzfPreviewBufferTags                 " Select tags from current files (Required [Python3](https://www.python.org/))
"
" :FzfPreviewOldFiles                   " Select files from oldfiles
"
" :FzfPreviewMruFiles                   " Select mru files from neomru
"
" :FzfPreviewQuickFix                   " Select line from QuickFix (Required [Python3](https://www.python.org/))
"
" :FzfPreviewLocationList               " Select line from LocationList (Required [Python3](https://www.python.org/))
"
" :FzfPreviewLines                      " Select line from current buffer (Required [Python3](https://www.python.org/))
"
" :FzfPreviewJumps                      " Select jumplist item (Required [Python3](https://www.python.org/))
"
" :FzfPreviewChanges                    " Select changelist item (Required [Python3](https://www.python.org/))
"
" :FzfPreviewMarks                      " Select mark (Required [Python3](https://www.python.org/))
"
" :FzfPreviewFromResources              " Select files from selected resources (project, git, directory, buffer, project_old, project_mru, old, mru)
"  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]

nnoremap <silent> [fzf-p]p     :<C-u>FzfPreviewFromResources project_mru git<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>FzfPreviewGitStatus<CR>
nnoremap <silent> [fzf-p]b     :<C-u>FzfPreviewBuffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>FzfPreviewAllBuffers<CR>
nnoremap <silent> [fzf-p]o     :<C-u>FzfPreviewFromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]<C-o> :<C-u>FzfPreviewJumps<CR>
nnoremap <silent> [fzf-p]g;    :<C-u>FzfPreviewChanges<CR>
nnoremap <silent> [fzf-p]/     :<C-u>FzfPreviewLines -add-fzf-arg=--no-sort -add-fzf-arg=--query="'"<CR>
nnoremap <silent> [fzf-p]*     :<C-u>FzfPreviewLines -add-fzf-arg=--no-sort -add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          [fzf-p]gr    :<C-u>FzfPreviewProjectGrep<Space>
xnoremap          [fzf-p]gr    "sy:FzfPreviewProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]t     :<C-u>FzfPreviewBufferTags<CR>
nnoremap <silent> [fzf-p]q     :<C-u>FzfPreviewQuickFix<CR>
nnoremap <silent> [fzf-p]l     :<C-u>FzfPreviewLocationList<CR>
nnoremap <silent> [fzf-p]d     :<C-u>FzfPreviewDirectoryFiles<CR>

" $FZF_PREVIEW_BAT_THEME="Monokai Extended Bright"
" let $FZF_PRVIEW_BAT_THEME='Monokai Extended'
let $BAT_THEME='Monokai Extended'
let g:fzf_preview_command = 'bat --color=always --style=grid {-1}'
let g:fzf_preview_filelist_command = "rg --files --color 'always' --hidden --follow --no-messages -g \!'* *'" " Installed ripgrep
" let g:fzf_preview_filelist_postprocess_command="xargs ls -t -color='always'"
" let g:fzf_preview_filelist_postprocess_command="xargs gls -t --color=always"
let g:fzf_preview_floating_window_rate = 0.85
let g:fzf_preview_filelist_postprocess_command = 'xargs exa --color=always' " Use exa
" User vim-devicons
let g:fzf_preview_use_dev_icons = 1

nnoremap <silent> <leader>z :<C-u>FzfPreviewFromResources project_mru git<CR>
nnoremap <silent> <Leader>p :<C-u>FzfPreviewProjectFiles<CR>
nnoremap <silent> <Leader>b :<C-u>FzfPreviewAllBuffers<CR>
nnoremap <silent> <Leader>m :<C-u>FzfPreviewProjectOldFiles<CR>
nnoremap <silent> <Leader>M :<C-u>FzfPreviewOldFiles<CR>
nnoremap <silent> <Leader>d :<C-u>FzfPreviewDirectoryFiles<CR>
