" Tab Line	TabLine to jediFat
" Tab LineSel	TabLineSel
" Tab LineFill	TabLineFill

" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
" ROYGTBMP
let s:shade0 = "#282629"
let s:shade1 = "#474247"
let s:shade2 = "#656066"
let s:shade3 = "#847E85"
let s:shade4 = "#A29DA3"
let s:shade5 = "#C1BCC2"
let s:shade6 = "#E0DCE0"
let s:shade7 = "#FFFCFF"
let s:red0 = "#FF4050"
let s:orange0 = "#F28144"
let s:yellow0 = "#FFD24A"
let s:green0 = "#A4CC35"
let s:teal0 = "#26C99E"
let s:blue0 = "#66BFFF"
let s:magenta0 = "#CC78FA"
let s:pink0 = "#F553BF"
let s:red1 = "#F03E4D"
let s:orange1 = "#F37735"
let s:yellow1 = "#EEBA21"
let s:green1 = "#97BD2D"
let s:teal1 = "#1FC598"
let s:blue1 = "#5AF7B0"
let s:magenta1 = "#BF65F0"
let s:pink1 = "#EE4EB8"
" #494b53
" #696c77
" #a0a1a7
" #c2c2c3
" #0184bc
" #4078f2
" #a626a4
" #50a14f
" #e45649
" #ca1243
" #986801
" #c18401
" #fafafa
" #9e9e9e
" #f0f0f0
" #526fff
" #0083be
" #e7e9e1
" #d3d3d3
" #d0d0d0
" #dfdfdf

hi clear

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


hi Boolean         guifg=#EE4Eb8
" hi Character       guifg=#E6DB74
hi Character       guifg=#ffff00
hi Number          guifg=#AE81FF
" hi String          guifg=#E6DB74
hi String          guifg=#ffff00 gui=NONE
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Conceal		   guibg=NONE	 guifg=#cfcfc2 gui=NONE
hi Cursor          guifg=#000000 guibg=#F8F8F0
hi iCursor         guifg=#000000 guibg=#F8F8F0
hi CursorColumn                  guibg=#252525
hi IndentGuidesOdd guifg=#494949
hi IndentGuidesEven guifg=#3E3D32

hi Debug           guifg=#BCA3A3               gui=bold
hi Define          guifg=#66D9EF
hi Delimiter       guifg=#8F8F8F
hi DiffAdd                       guibg=#13354A
hi DiffChange      guifg=#89807D guibg=#4C4745
hi DiffDelete      guifg=#s:red1 guibg=#1E0010
hi DiffText                      guibg=#4C4745 gui=italic,bold
hi Directory       guifg=#87ff00               gui=bold
" hi Error           guifg=#960050 guibg=#1E0010
hi Error           guifg=#FF2600 guibg=#1E0010
" hi Error           guifg=#E6DB74 guibg=#1E0010
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#87ff00               gui=bold
hi Float           guifg=#AE81FF
" hi FoldColumn      guifg=#465457 guibg=#000000
" hi Folded          guifg=#465457 guibg=#000000
hi FoldColumn      guifg=#404040 guibg=#1c1c1c 
hi Folded	       guifg=#404040 guibg=#1c1c1c 
" hi FoldColumn      guifg=#465457 guibg=#000000
" hi Folded          guifg=#465457 guibg=#000000
" hi Folded      guifg=#f8f8f0 guibg=#13354A
hi Function        guifg=#fd971f
hi Identifier      guifg=#87ff00			  gui=bold
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#FF2600 guibg=#FFFFFF gui=bold

hi Keyword         guifg=#F92672               gui=bold
" hi Label           guifg=#E6DB74               gui=none
hi Label           guifg=#ffff00               gui=none
hi NonText         guifg=#75715E
hi Macro           guifg=#FD971F               gui=bold
hi SpecialKey      guifg=#66D9EF               gui=bold
hi MatchParen      guifg=#d3ff00 guibg=#465457 gui=bold,italic
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

" complete menu

" hi Pmenu           guifg=#526fff guibg=#f8f8f0
" FFD24A"
"guibg=#4f2039
" hi PmenuSel        guifg=#87ff00 guibg=#465457 gui=bold,underline
" 303030
hi Pmenu           guifg=#bcbcbc guibg=#303030
hi PmenuSel        guifg=#f92672 guibg=#292929 gui=bold
hi PmenuSbar       guifg=#87ff00 guibg=#303030
hi PmenuThumb      guifg=#66D9EF guibg=#303030

" hi PmenuSel        guifg=#87ff00 guibg=#f8f8f0
" hi PmenuSbar                     guibg=#f8f8f0
" hi PmenuThumb      guifg=#a626a4 guibg=#f8f8f0
" " #a626a4

hi PreCondit       guifg=#87ff00               gui=bold
hi PreProc         guifg=#87ff00
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
" hi Search          guifg=#000000 guibg=#FFE792
" hi Search          guifg=#EEFF00 guibg=#433d32 gui=bold
hi Search          guifg=#FFFFFF guibg=#FF2600 gui=bold
" hi IncSearch       guifg=#FFD94c guibg=#000000
" marks
hi SignColumn      guifg=#87ff00 guibg=#232526
hi SpecialChar     guifg=#F92672               gui=bold
" hi SpecialComment  guifg=#7E8E91               gui=bold
hi SpecialComment  guifg=#465457               gui=bold
hi Special         guifg=#66D9EF guibg=bg      gui=bold
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl,bold
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#F92672               gui=bold
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#FD971F               gui=italic
hi Structure       guifg=#70f0f0
hi Tag             guifg=#F92672               gui=italic
" hi Title           guifg=#ef5939
hi Title           guifg=#66d9ef
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold

" hi Typedef         guifg=#66D9EF
hi Typedef         guifg=#007dff
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi Visual          guifg=#007dff guibg=#181818 gui=bold
hi VisualNOS       guifg=#007dff guibg=#403D3D gui=bold
" hi Visual                        guibg=#403D3D
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#007dff guibg=#f0f0f0 gui=bold
hi TabLine         guibg=#f92672 guifg=#f0f0f0 gui=bold

if s:molokai_original == 1
   " hi Normal          guifg=#F8F8F2 guibg=#272822
	hi Normal guifg=.s:shade6 guibg=#272822
   " hi Comment         guifg=#75715E
	" hi Comment         guifg=#303030  gui=bold
	" hi pythonDocstring		guibg=NONE guifg=#505050 gui=NONE
   " hi Comment         guifg=#465457
   hi Comment         guifg=#505050
   hi CursorLine                    guibg=#3E3D32
   hi CursorLineNr    guifg=#d3ff00               gui=none
   hi CursorColumn                  guibg=#3E3D32
   hi ColorColumn                   guibg=#3B3A32
   hi LineNr          guifg=#BCBCBC guibg=#3B3A32
   hi NonText         guifg=#75715E
   hi SpecialKey      guifg=#75715E
else
   " hi Normal          guifg=#F8F8F2 guibg=#1c1c1c
	hi Normal guifg=s:shade6 guibg=#1c1c1c
   " hi Comment         guifg=#7E8E91
   " hi Comment         guifg=#393939
   hi Comment         guifg=#494949
   hi CursorLine                    guibg=#252525
   hi CursorLineNr    guifg=#d3ff00 gui=bold
   hi CursorColumn                  guibg=#252525
   hi ColorColumn	   guibg=#262626 ctermbg=235
   " hi ColorColumn                   guibg=#232526
   " hi LineNr          guifg=#465457 guibg=#232526
   hi linenr		  guibg=#1c1c1c guifg=#303030
   hi NonText         guifg=#465457
   hi SpecialKey      guifg=#465457
end

"
" Support for 256-color terminal
"
if &t_Co > 255
   if s:molokai_original == 1
      hi Normal                   ctermbg=234
      hi CursorLine               ctermbg=235   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   else
      hi Normal       ctermfg=252 ctermbg=233
      hi CursorLine               ctermbg=234   cterm=none
      hi CursorLineNr ctermfg=208               cterm=none
   endif
   hi Boolean         ctermfg=135
   hi Character       ctermfg=144
   hi Number          ctermfg=135
   hi String          ctermfg=144
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
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=118               cterm=bold
   hi Float           ctermfg=135
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=118
   hi Identifier      ctermfg=208               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193 ctermbg=16

   hi keyword         ctermfg=161               cterm=bold
   hi Label           ctermfg=229               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=81

   hi MatchParen      ctermfg=233  ctermbg=208 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=161

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel        ctermfg=255 ctermbg=242
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=118               cterm=bold
   hi PreProc         ctermfg=118
   hi Question        ctermfg=81
   hi Repeat          ctermfg=161               cterm=bold
   hi Search          ctermfg=0   ctermbg=222   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=161               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=81
   if has("spell")
       hi SpellBad                ctermbg=52
       hi SpellCap                ctermbg=17
       hi SpellLocal              ctermbg=17
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=161               cterm=bold
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=161
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Typedef         ctermfg=81
   hi Type            ctermfg=81                cterm=none
   hi Underlined      ctermfg=244               cterm=underline

   " hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VertSplit       guifg=#606060 guibg=#606060 gui=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi Comment         ctermfg=59
   hi CursorColumn                ctermbg=236
   hi ColorColumn                 ctermbg=236
   hi LineNr          ctermfg=250 ctermbg=236
   hi NonText         ctermfg=59

   hi SpecialKey      ctermfg=59

   if exists("g:rehash256") && g:rehash256 == 1
       hi Normal       ctermfg=252 ctermbg=234
       hi CursorLine               ctermbg=236   cterm=none
       hi CursorLineNr ctermfg=208               cterm=none

       hi Boolean         ctermfg=141
       hi Character       ctermfg=222
       hi Number          ctermfg=141
       hi String          ctermfg=222
       hi Conditional     ctermfg=197               cterm=bold
       hi Constant        ctermfg=141               cterm=bold

       hi DiffDelete      ctermfg=125 ctermbg=233

       hi Directory       ctermfg=154               cterm=bold
       hi Error           ctermfg=222 ctermbg=233
       hi Exception       ctermfg=154               cterm=bold
       hi Float           ctermfg=141
       hi Function        ctermfg=154
       hi Identifier      ctermfg=208

       hi Keyword         ctermfg=197               cterm=bold
       hi Operator        ctermfg=197
       hi PreCondit       ctermfg=154               cterm=bold
       hi PreProc         ctermfg=154
       hi Repeat          ctermfg=197               cterm=bold

       hi Statement       ctermfg=197               cterm=bold
       hi Tag             ctermfg=197
       hi Title           ctermfg=203
       hi Visual                      ctermbg=238

       hi Comment         ctermfg=244
       hi LineNr          ctermfg=239 ctermbg=235
       hi NonText         ctermfg=239
       hi SpecialKey      ctermfg=239
   endif
end

" Highlights {{{1
" hi link Boolean             Constant
" hi link Character           Constant
" hi link Number              Constant
"
" hi link Float               Number
"
" hi link Define              Preproc
" hi link Include             Preproc
" hi link Macro               Preproc
" hi link PreCondit           PreProc
"
" hi link Conditional         Statement
" hi link Exception           Statement
" hi link HelpCommand         Statement
" hi link HelpExample         Statement
" hi link Keyword             Statement
" hi link Label               Statement
" hi link Operator            Statement
" hi link Repeat              Statement
"
" hi link StorageClass        Type
" hi link Structure           Type
" hi link Typedef             Type
"
" hi link Debug               Special
" hi link Delimiter           Special
" hi link SpecialChar         Special
" " hi link SpecialComment      Special
" hi link Tag                 Special

" python ---------------------------------------------------------------------
hi pythonBuiltinObj guibg=NONE guifg=#d3ff00 gui=bold
hi pythonBoolean guibg=NONE guifg=#66D9EF gui=bold

" hi pythonBuiltinFunc guibg=NONE guifg=#F92672 gui=NONE
hi link pythonImport        PreProc
hi link pythonFunction      Structure
hi link pythonExceptions    PreProc
hi link pythonBrackets		PreProc

" custom:
hi link pythonDef Operator
hi link pythonSpecial Boolean
hi link pythonDecorator Type
hi link pythonAs PreProc
hi link pythonConstant Constant
" HiLink pythonFString          FString
" HiLink pythonRawFString       RawFString
" hi link pythonFString		FString
" hi link pythonRawFString	RawFString
hi link pythonFString		String
hi link pythonRawFString	String
hi pythonMagic					guibg=NONE guifg=#8e44ad gui=NONE
hi pythonRepeat					guibg=NONE guifg=#d3ff00 gui=bold
hi pythonWordOperator			guibg=NONE guifg=#d3ff00 gui=bold
" hi pythonOperator		guibg=NONE guifg=#F92672 gui=bold
hi pythonOperator				guibg=NONE guifg=#F92672 gui=bold
hi pythonDocstring				guibg=NONE guifg=#606060 gui=bold
" hi pythonDocstring		guibg=NONE guifg=#75715E gui=NONE
hi pythonConstant				guibg=NONE guifg=#87ff00 gui=bold
hi pythonNone					guibg=NONE guifg=#d3ff00 gui=bold
" hi pythonFString		guibg=NONE guifg=#F92672 gui=NONE
" hi pythonRawFString		guibg=NONE guifg=#F92672 gui=NONE
hi pythonExtraOperator			guibg=NONE guifg=#FD971F gui=bold
hi pythonExtraPseudoOperator	guibg=NONE guifg=#FD971F gui=bold
hi pythonParameters				guibg=NONE guifg=#87ff00 gui=bold
hi pythonClassParameters		guibg=NONE guifg=#FD971f gui=bold,underline
hi pythonArg					guibg=NONE guifg=#FD971F gui=bold
hi pythonLibraries				guibg=NONE guifg=#f92672 gui=bold
hi pythonVars				    guibg=NONE guifg=#87ff00 gui=bold
hi pythonParam				    guibg=NONE guifg=#FD971f gui=bold
hi pythonClassVars				guibg=NONE guifg=#f553bf gui=bold
hi pythonNote					guibg=NONE guifg=#d3ff00 gui=bold
hi pythonArgs					guibg=NONE guifg=#FFFCFF gui=bold
hi pythonReturns				guibg=NONE guifg=#FFFCFF gui=bold
hi pythonBrackets				guibg=NONE guifg=#f92672 gui=bold

" hi pythonRainbowParentheses		guibg=NONE guifg=#97bD2d gui=bold
"
" hi pythonRainbow_o0				guibg=NONE guifg=#97bD2d gui=bold
" hi pythonRainbow_o1				guibg=NONE guifg=#97bD2d gui=bold
" hi pythonRainbow_o2				guibg=NONE guifg=#97bD2d gui=bold
" hi pythonRainbow_o3				guibg=NONE guifg=#97bD2d gui=bold
"
" hi pythonRainbow_r0				guibg=NONE guifg=#97bD2d gui=bold
" hi pythonRainbow_r1				guibg=NONE guifg=#97bD2d gui=bold
" hi pythonRainbow_r2				guibg=NONE guifg=#97bD2d gui=bold
" hi pythonRainbow_r3				guibg=NONE guifg=#97bD2d gui=bold
"
" hi pythonRainbow_p0				guibg=NONE guifg=#97bD2d gui=bold
" hi pythonRainbow_p1				guibg=NONE guifg=#97bD2d gui=bold
" hi pythonRainbow_p2				guibg=NONE guifg=#97bD2d gui=bold
" hi pythonRainbow_p3				guibg=NONE guifg=#97bD2d gui=bold

hi ALEWarningSign		guibg=NONE guifg=#FD971F gui=NONE
hi ALEErrorSign			guibg=NONE guifg=#F92672 gui=bold

" hi pythonTripleQuotes      guibg=NONE guifg=#465457 gui=NONE
" hi pythonStatement		guibg=NONE guifg=#FD971F gui=bold
" hi link pythonDocstring      SpecialComment
" hi pythonDocstring      guibg=NONE guifg=#465457
" hi pythonBytes      guibg=NONE guifg=#465457 gui=bold
" hi pythonString      guibg=NONE guifg=#465457 gui=bold
" hi link pythonDocstring        Comment

"#282629 #474247 #656066 #847E85 #A29DA3 #C1BCC2 #E0DCE0 #FFFCFF #FF4050
"#F28144 #FFD24A #A4CC35 #26C99E #66BFFF #CC78FA #F553BF #F03E4D #F37735
"#EEBA21 #97BD2D #1FC598 #53A6E1 #BF65F0 #EE4EB8 #494b53 #696c77 #a0a1a7 
"#c2c2c3 #0184bc #4078f2 #a626a4 #50a14f #e45649 #ca1243 #986801 #c18401 
"#fafafa #9e9e9e #f0f0f0 #526fff #0083be #e7e9e1 #d3d3d3 #d0d0d0 #dfdfdf
"
"#1E2541 #EEFFFF"#EEFFFF #1E2541 #F0719B #5AF7B0 #FFA56B #57C7FF #C792EA
"#89DDFF #EEFFFF #354274 #F02E6E #2CE592 #FF8537 #1DA0E2 #A742EA #47BAE8
"#DEE6E7 #2A335A
" hi link pythonStatement		 Structure


" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark


"R O Y G T B M P
  " NERDTree

exec "hi NERDTreeExecFile guifg=".s:green0
exec "hi NERDTreeDirSlash guifg=".s:teal0
exec "hi NERDTreeCWD guifg=".s:red0

  """"""""""""
  " Clean up "
  """"""""""""

  unlet s:shade0 s:shade1 s:shade2 s:shade3 s:shade4 s:shade5 s:shade6 s:shade7 s:red0 s:orange0 s:yellow0 s:green0 s:teal0 s:blue0 s:magenta0 s:pink0 s:red1 s:orange1 s:yellow1 s:green1 s:teal1 s:blue1 s:magenta1 s:pink1
  
  
