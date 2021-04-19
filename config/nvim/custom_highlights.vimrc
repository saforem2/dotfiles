" let g:rainbow#max_level = 16
" let g:rainbow#blacklist = [202, 255, 249, '#b2b2b2', '#fffcff', '#ffff00']
" let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" autocmd VimEnter * RainbowParentheses

" set foldmethod=indent
" #121212", "#fa2573", "#98e123", "#dfd460", "#1080d0", "#8700ff", "#43a8d0", "#bbbbbb",
""#555555", "#f6669d", "#b1e05f", "#fff26d", "#00afff", "#af87ff", "#51ceff", "#ffffff"
" foregground #bbbbbb background #121212");
" t.prefs_.set('cursor-color', 'rgba(187,187,187,0.5)');"
" #1a1a1a", "#f4005f", "#98e024", "#fa8419", "#9d65ff", "#f4005f", "#58d1eb", "#c4c5b5",
" #625e4c", "#f4005f", "#98e024", "#e0d561", "#9d65ff", "#f4005f", "#58d1eb", "#f6f6ef"]);
" t.prefs_.set('foreground-color', "#c4c5b5");
" t.prefs_.set('background-color', "#1a1a1a");
" t.prefs_.set('cursor-color', 'rgba(246,247,236,0.5)');
" #2a2a2a", "#ff0000", "#79ff0f", "#e7bf00", "#396bd7", "#b449be", "#66ccff", "#bbbbbb",
""#666666", "#ff0080", "#66ff66", "#f3d64e", "#709aed", "#db67e6", "#7adff2", "#ffffff"]);
" t.prefs_.set('foreground-color', "#f2f2f2");
" t.prefs_.set('background-color', "#000000");
" t.prefs_.set('cursor-color', 'rgba(77,77,77,0.5)');
"
" LIGHT THEME:
" #000000", "#ff4d83", "#1f8c3b", "#1fc95b", "#1dd3ee", "#8959a8", "#3e999f", "#ffffff",
" #000000", "#ff0021", "#1fc231", "#d5b807", "#15a9fd", "#8959a8", "#3e999f", "#ffffff"]);
" t.prefs_.set('foreground-color', "#4d4d4c");
" t.prefs_.set('background-color', "#ffffff");
" t.prefs_.set('cursor-color', 'rgba(77,77,76,0.5)');
"
" #1b1d1e", "#f92672", "#4df840", "#f4fd22", "#2757d6", "#8c54fe", "#38c8b5", "#ccccc6"
" "#505354", "#ff5995", "#b6e354", "#feed6c", "#3f78ff", "#9e6ffe", "#23cfd5", "#f8f8f2"]);
" t.prefs_.set('foreground-color', "#f8f8f8");
" t.prefs_.set('background-color', "#1b1d1e");
" t.prefs_.set('cursor-color', 'rgba(252,151,31,0.5)');
"
"#007dff 
"
function! MyCustomHighlights()
	" hi semshiAttribute ctermfg=49 guibg=NONE guifg=#d3ff00
    hi semshiLocal           ctermfg=209 guifg=#ff875f
    " hi semshiImported        ctermfg=214 guifg=#d3ff00
    hi semshiImported        ctermfg=214 guifg=#ff5fff
    " hi semshiGlobal          ctermfg=214 guifg=#00ffaf
    " hi semshiImported        ctermfg=214 guifg=#007DFF cterm=bold gui=bold
    " hi semshiParameter       ctermfg=75  guifg=#a1efe4 gui=bold
    hi semshiParameterUnused ctermfg=117 guifg=#e8e8e8 guibg=#ff5722 cterm=underline gui=underline
    " hi semshiFree            ctermfg=218 guifg=#ffafd7
    " hi semshiBuiltin         ctermfg=207 guifg=#66D9EF
    hi semshiBuiltin         ctermfg=207 guifg=#66ff66 gui=bold
    " " hi semshiAttribute       ctermfg=49  guifg=#00ffaf
    hi link Title            semshiGlobal
    " hi semshiSelf            ctermfg=249 guifg=#b2b2b2
    " hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
    " hi semshiSelected        ctermfg=231 guifg=#1c2022 ctermbg=161 guibg=#a1efe4
    "
    " hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
    " hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
    hi Normal                guibg=NONE guifg=#e8e8e8 gui=NONE
    hi pythonDocstring       guibg=NONE guifg=#696c77
    hi semshiGlobal          ctermfg=214 guifg=#00ffaf gui=bold
    hi pythonComment         guibg=NONE guifg=#465457  gui=italic
    hi pythonArgs            guibg=NONE guifg=#F92672
    hi pythonKwargs          guibg=NONE guifg=#Fd971f gui=bold
    hi pythonReturns         guibg=NONE guifg=#87ff00
    syntax match pythonMethod /\v[[:alpha:]_.]+\ze(\s?\()/
    " hi pythonMethod          guibg=NONE guifg=#d3ff00 gui=NONE
    " hi pythonMethod          guibg=NONE guifg=#ff5fff gui=NONE
    hi pythonMethod          guibg=NONE guifg=#4df840 gui=NONE
    " sign define semshiError text=E> texthl=semshiErrorSign
	hi semshiAttribute ctermfg=49 guibg=NONE guifg=#CC78FA gui=NONE
    " hi semshiSelf           ctermfg=249 guifg=#b2b2b2
    hi semshiSelf           ctermfg=249 guifg=#9e9e9e gui=NONE
    hi pythonImportedModule ctermfg=117 guifg=#03a9f4
endfunction

autocmd FileType python call MyCustomHighlights()
