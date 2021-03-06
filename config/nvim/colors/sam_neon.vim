" Vim color file

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif

hi Boolean         guifg=#AE81FF	gui=bold
hi Character       guifg=#ffff00
hi Number          guifg=#AE81FF
hi String          guifg=#ffff00
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Cursor          guifg=#000000 guibg=#F8F8F0
hi iCursor         guifg=#000000 guibg=#F8F8F0
hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#960050 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi Directory       guifg=#87ff00               gui=bold
hi Error           guifg=#960050 guibg=#1E0010
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#87ff00               gui=bold
hi Float           guifg=#AE81FF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#465457 guibg=#000000
hi Function        guifg=#87ff00
hi Identifier      guifg=#FD971F
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#C4BE89 guibg=#000000
hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#ffff00               gui=none
hi Macro           guifg=#C4BE89               gui=italic
hi SpecialKey      guifg=#66D9EF               gui=italic

hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
hi ModeMsg         guifg=#ffff00
hi MoreMsg         guifg=#ffff00
hi Operator        guifg=#F92672
hi ColorColumn	   guibg=#262626 ctermbg=235
hi linenr		   guibg=#1c1c1c guifg=#303030

" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66D9EF

hi PreCondit       guifg=#87ff00               gui=bold
hi PreProc         guifg=#87ff00
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
hi Search          guifg=#FFFFFF guibg=#455354
" marks column
hi SignColumn      guifg=#87ff00 guibg=#232526
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#465457               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic
hi SpecialKey      guifg=#888A85               gui=italic
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#F92672               gui=bold
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#66D9EF
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#ef5939
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

hi Typedef         guifg=#66D9EF
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

" hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VertSplit       guifg=#606060 guibg=#606060 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

if s:molokai_original == 1
   hi Normal          guifg=#F8F8F2 guibg=#272822
   hi Comment         guifg=#75715E
   hi CursorLine                    guibg=#3E3D32
   hi CursorColumn                  guibg=#3E3D32
   " hi LineNr          guifg=#303030 guibg=#3c3d37
   hi NonText         guifg=#262626 guibg=#1c1c1c
else
   hi Normal          guifg=#F8F8F2 guibg=#1c1c1c
   hi Comment         guifg=#465457
   hi CursorLine                    guibg=#293739
   hi CursorColumn                  guibg=#293739
   " hi LineNr          guifg=#BCBCBC guibg=#232526
   hi NonText         guifg=#BCBCBC guibg=#1c1c1c
end

"
" Support for 256-color terminal
"
if &t_Co > 255
   hi VertSplit       ctermfg=241 ctermbg=241
   hi Boolean         ctermfg=197
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=226
   "hi String		  ctermfg=157
   hi Conditional     ctermfg=161               cterm=bold
   hi Constant        ctermfg=135               cterm=bold
   hi Cursor          ctermfg=16  ctermbg=253
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=81
   hi Delimiter       ctermfg=241

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=234
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=129
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=000  ctermbg=235
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208
   hi Ignore          ctermfg=244 ctermbg=135
   "hi IncSearch       ctermfg=232 ctermbg=226
   "hi IncSearch		  ctermfg=226 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16
   hi SpellBad		  ctermfg=13  ctermbg=241
   hi SpellLocal	  ctermfg=13  ctermbg=241
   hi SpellRare		  ctermfg=13  ctermbg=241
   hi SpellCap		  ctermfg=13  ctermbg=241

   hi Keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   "hi SpecialKey      ctermfg=81
   hi SpecialKey	  ctermfg=160

   "hi MatchParen      ctermfg=16  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel                    ctermbg=244
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   "hi Search          ctermfg=66 ctermbg=253
   hi Search          ctermfg=253 ctermbg=66

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81  ctermbg=235
   hi SpecialKey      ctermfg=245

   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=235
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   "hi VertSplit       ctermfg=244 ctermbg=235   cterm=bold
   hi VisualNOS                   ctermbg=235
   hi Visual          ctermfg=154            ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   "hi Normal          ctermfg=252 ctermbg=235
   hi Normal		  ctermfg=252 ctermbg=234
   hi Comment         ctermfg=59
   hi CursorLine	  ctermbg=235   cterm=none
   hi Directory		  ctermfg=82
   "hi CursorColumn                ctermbg=234
   hi ColorColumn		ctermbg=235
   "hi linenr ctermfg=59 ctermbg=235 cterm=none guifg=#90908a guibg=#3c3d37 gui=none
   hi linenr ctermfg=236 cterm=none
   " !!!! PART OF LINE ABOVE !!!! guifg=#90908a guibg=#3c3d37 gui=none
   "hi LineNr          ctermfg=59 ctermbg=234
   " hi NonText         ctermfg=235 ctermbg=234
   hi NonText         ctermfg=235 ctermbg=234
   hi nonascii		  ctermfg=13	ctermbg=81	cterm=standout
end
