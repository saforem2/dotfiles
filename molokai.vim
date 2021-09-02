" Tab Line	TabLine to jediFat
" Tab LineSel	TabLineSel
" Tab LineFill	TabLineFill
"
" Github dark background
" RGB(12,14,19,1)
let s:github_black = '#0d111b'
" #161C22
" #D2A8FF
" #FF7B72
let s:github_grey = '#8B949E'
" #79C0FF


" Material colors
let s:redmaterial               = '#ff5252'
let s:lightredmaterial          = '#ff867f'
let s:darkredmaterial           = '#c50e29'
let s:pinkmaterial              = '#ff4081'
let s:lightpinkmaterial         = '#ff79b0'
let s:darkpinkmaterial          = '#c60055'
let s:purplematerial            = '#e040fb'
let s:lightpurplematerial       = '#ff79ff'
let s:darkpurplematerial        = '#aa00c7'
let s:deeppurplematerial        = '#7c4dff'
let s:lightdeeppurplematerial   = '#b47cff'
let s:indigo                    = '#536dfe'
let s:darkdeeppurplematerial    = '#3f1dcb'
let s:lightindigomaterial       = '#8f9bff'
let s:darkindigomaterial        = '#0043ca'
let s:bluematerial      = '#448aff'
let s:lightbluematerial = '#83b9ff'
let s:darkbluematerial = '#005ecb'
let s:lightbluematerial = '#40c4ff'
let s:lightlightbluematerial = '#82f7ff'
let s:darklightbluematerial = '#0094cc'
let s:cyanmaterial = '#18ffff'
let s:lightcyanmaterial = '#76ffff'
let s:darkcyanmaterial = '#00cbcc'
let s:tealmaterial = '#65ffda'
let s:lighttealmaterial = '#9effff'
let s:darktealmaterial = '#14cba8'
let s:greenmaterial = '#69f0ae'
let s:lightgreenmaterial = '#9fffe0'
let s:darkgreenmaterial = '#2bbd7e'
let s:lightgreenmaterial = '#b2ff59'
let s:lightlightgreenmaterial = '#e7ff8c'
let s:darklightgreenmaterial = '#7ecb20'
let s:limematerial = '#eeff71'
let s:lightlimematerial = '#ffff78'
let s:darklimematerial = '#b8cc00'
let s:yellowmaterial = '#ffff00'
let s:lightyellowmaterial = '#ffff5a'
let s:darkyellowmaterial = '#c7cc00'
let s:ambermaterial = '#ffd740'
let s:lightambermaterial = '#ffff74'
let s:darkambermaterial = '#c8a600'
let s:orangematerial = '#ffab40'
let s:lightorangematerial = '#ffdd71'
let s:darkoragnematerial = '#c77c02'
let s:deeporangematerial = '#ff6e40'
let s:lightdeeporangematerial = '#ffa06d'
let s:darkdeeporangematerial = '#c53d13'
let s:brownmaterial = '#3e2723'
let s:lightbrownmaterial = '#6a4f4b'
let s:darkbrownmaterial = '#1b0000'
let s:greymaterial = '#212121'
let s:lightgreymaterial = '#484848'
let s:darkgreymaterial = '#000000'
let s:bluegreymaterial = '#263238'
let s:lightbluegreymaterial = '#4f5b62'
let s:darkbluegreymaterial = '#000a12'

"
" Vim color file
"
" Blossom color scheme from
" https://github.com/rajshekhar26/dotfiles/blob/master/.config/colorschemes/blossom
" ! special
" #818aa0
let s:blossom_foreground        = '#F2f2f4'
let s:blossom_background        = '#2f3842'
let s:blossom_black             = '#22272a'
let s:blossom_black_highlight   = '#22272d'
let s:blossom_grey              = '#6A777E'
let s:blossom_red               = '#ef4b4b'
let s:blossom_green             = '#2CC46E'
let s:blossom_yellow            = '#ECC46F'
let s:blossom_blue              = '#6f97ec'
let s:blossom_magenta           = '#fa5477'
let s:blossom_cyan              = '#71c6ff'

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

let s:black             = "#171717"
let s:brightyellow      = "#eeff00"
let s:yellow            = "#ffff00"
let s:green             = "#87ff00"
let s:blue              = "#007dff"
let s:teal              = "#5AF7B0"
let s:pink              = "#F92672"
let s:red               = "#ff2600"
let s:brightred         = "#FF4050"
let s:purple            = "#AE81FF"
let s:orange            = "#fd971f"


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
"

let s:yellow_light = "#FDE74C"
let s:blue_light = "#5bc0eb"
let s:green_light = "#9bc53d"
let s:red_light = "#e55934"
let s:orange_light = "#FA7921"

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



hi Boolean         guifg=#0184bc
hi Character       guifg=#ffff00
hi Number          guifg=#ff0080
hi String          guifg=#ffff00 gui=italic
hi Conditional     guifg=#F92672               gui=bold
hi Constant        guifg=#AE81FF               gui=bold
hi Conceal		   guibg=NONE	 guifg=#cfcfc2 gui=NONE
hi Cursor          guifg=#000000 guibg=#ffffff
hi iCursor         guifg=#000000 guibg=#ffffff
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
hi Directory       guifg=#b2b2b2
hi Error           guifg=#252525 guibg=#FF2600
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold
hi Exception       guifg=#fd971f               gui=bold
hi Float           guifg=#AE81FF
hi Folded	       guifg=#465457 guibg=#1e1e1e  gui=bold,italic
hi FoldColumn      guifg=#465457 guibg=#1e1e1e  gui=bold,italic
hi Function        guifg=#87ff00
hi Identifier      guifg=#fd971f			  gui=bold
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#FF2600 guibg=#FFFFFF gui=bold

hi Keyword         guifg=#F92672               gui=bold
hi Label           guifg=#ffff00               gui=none
hi NonText         guifg=#75715E
hi Macro           guifg=#87ff00               gui=bold
hi SpecialKey      guifg=#66D9EF               gui=bold
hi MatchParen      guifg=#d3ff00 guibg=#465457 gui=bold,italic
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Operator        guifg=#F92672

" complete menu

hi Pmenu           guifg=#bcbcbc guibg=#303030
hi PmenuSel        guifg=#f92672 guibg=#292929 gui=bold
hi PmenuSbar       guifg=#fd971f guibg=#303030
hi PmenuThumb      guifg=#66D9EF guibg=#303030

hi PreCondit       guifg=#fd971f               gui=bold
hi PreProc         guifg=#d3ff00
hi Question        guifg=#66D9EF
hi Repeat          guifg=#F92672               gui=bold
hi Search          guifg=#FFFFFF guibg=#FF2600 gui=bold
hi SignColumn      guifg=#fd971f guibg=#232526
hi SpecialChar     guifg=#F92672               gui=bold
hi SpecialComment  guifg=#465457               gui=bold,italic
hi Special         guifg=#66D9EF guibg=bg      gui=bold



if has("spell")
    hi SpellBad    guisp=#FF0000 guibg=#f8f8f0 guifg=#171717 gui=undercurl,bold
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif
hi Statement       guifg=#F92672               gui=bold
hi StatusLine      guifg=#455354 guibg=fg
hi StatusLineNC    guifg=#808080 guibg=#080808
hi StorageClass    guifg=#87ff00               gui=italic
hi Structure       guifg=#70f0f0
hi Tag             guifg=#F92672               gui=italic
hi Title           guifg=#fd971f               gui=bold
hi Todo            guifg=#FF005b guibg=bg      gui=bold

hi Typedef         guifg=#007dff
hi Type            guifg=#66D9EF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi Visual          guifg=#007dff guibg=#181818 gui=bold
hi VisualNOS       guifg=#007dff guibg=#403D3D gui=bold
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
hi WildMenu        guifg=#66D9EF guibg=#000000

hi TabLineFill     guifg=#007dff guibg=#f0f0f0 gui=bold
hi TabLine         guibg=#f92672 guifg=#f0f0f0 gui=bold

hi Normal           guifg=#ffffff  guibg=#1c1c1c       gui=NONE
hi Comment          guifg=#494949   guibg=italic          
hi CursorLine       guifg=NONE      guibg=#1e1e1e
hi CursorLineNr     guifg=#55c7ff   guibg=NONE          gui=bold
hi CursorColumn     guifg=NONE      guibg=#1e1e1e
hi ColorColumn      guifg=NONE      guibg=#1e1e1e
hi linenr		    guifg=#505050   guibg=NONE
hi qfLineNr         guifg=#bcbcbc   guibg=NONE
hi NonText          guifg=#465457   guibg=NONE
hi SpecialKey       guifg=#465457   guibg=NONE

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
    hi VertSplit       guifg=#303030 guibg=#30303
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

" hi Error           guifg=#960050 guibg=#1E0010
" hi Error           guifg=#E6DB74 guibg=#1E0010
" hi Character       guifg=#E6DB74
" hi String          guifg=#E6DB74
" hi String          guifg=#ffff00 gui=italic
" hi String          guifg=#ffa56b gui=italic
" hi FoldColumn      guifg=#465457 guibg=#000000
" hi Folded          guifg=#465457 guibg=#000000
" hi FoldColumn      guifg=#353535 guibg=#1e1e1e
" hi FoldColumn      guifg=#465457 guibg=#000000
" hi Folded          guifg=#465457 guibg=#000000
" hi Folded      guifg=#f8f8f0 guibg=#13354A
" hi Label           guifg=#E6DB74               gui=none
" hi Pmenu           guifg=#526fff guibg=#f8f8f0
" FFD24A"
"guibg=#4f2039
" hi PmenuSel        guifg=#fd971f guibg=#465457 gui=bold,underline
" 303030
" hi PmenuSel        guifg=#fd971f guibg=#f8f8f0
" hi PmenuSbar                     guibg=#f8f8f0
" hi PmenuThumb      guifg=#a626a4 guibg=#f8f8f0
" " #a626a4

" hi PreProc         guifg=#03a9f4
" hi Search          guifg=#000000 guibg=#FFE792
" hi Search          guifg=#EEFF00 guibg=#433d32 gui=bold
" hi IncSearch       guifg=#FFD94c guibg=#000000
" marks
" hi SpecialComment  guifg=#7E8E91               gui=bold
" hi Title           guifg=#ef5939
" hi Typedef         guifg=#66D9EF
" hi Visual                        guibg=#403D3D
" hi CursorLine       guifg=NONE      guibg=#252525
" hi linenr		    guifg=#353535   guibg=NONE
" hi linenr		    guifg=#404040   guibg=NONE
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
autocmd FileType python 
    \ hi pythonBuiltinObj guibg=NONE guifg=#d3ff00 gui=bold |
    \ hi pythonBoolean guibg=NONE guifg=#66D9EF gui=bold |
    \ hi link pythonImport        PreProc |
    \ hi link pythonFunction      Structure |
    \ hi link pythonExceptions    PreProc |
    \ hi link pythonBrackets		PreProc |
    \ hi link pythonDef Operator |
    \ hi link pythonSpecial Boolean |
    \ hi link pythonDecorator Type |
    \ hi link pythonAs PreProc |
    \ hi link pythonConstant Constant |
    \ hi link pythonFString		String |
    \ hi link pythonRawFString	String |
    \ hi pythonMagic				guibg=NONE guifg=#8e44ad gui=NONE |
    \ hi pythonRepeat				guibg=NONE guifg=#d3ff00 gui=NONE |
    \ hi pythonComment              guibg=NONE guifg=#494949 gui=italic |
    \ hi pythonWordOperator			guibg=NONE guifg=#d3ff00 gui=NONE |
    \ hi pythonOperator				guibg=NONE guifg=#F92672 gui=bold |
    \ hi pythonDocstring			guibg=NONE guifg=#606060 gui=NONE,italic |
    \ hi pythonConstant				guibg=NONE guifg=#fd971f gui=bold |
    \ hi pythonNone					guibg=NONE guifg=#d3ff00 gui=bold |
    \ hi pythonExtraOperator		guibg=NONE guifg=#87ff00 gui=bold |
    \ hi pythonExtraPseudoOperator	guibg=NONE guifg=#87ff00 gui=bold |
    \ hi pythonParameters			guibg=NONE guifg=#656565 gui=bold |
    \ hi pythonClassParameters		guibg=NONE guifg=#87ff00 gui=bold,underline |
    \ hi pythonArg					guibg=NONE guifg=#87ff00 gui=bold |
    \ hi pythonLibraries			guibg=NONE guifg=#FF79FF gui=NONE |
    \ hi pythonVars				    guibg=NONE guifg=#fd971f gui=NONE |
    \ hi pythonParam				guibg=NONE guifg=#87ff00 gui=bold |
    \ hi pythonClassVars			guibg=NONE guifg=#f553bf gui=bold |
    \ hi pythonNote					guibg=NONE guifg=#d3ff00 gui=bold,italic |
    \ hi pythonArgs					guibg=NONE guifg=#007Dff gui=NONE |
    \ hi pythonKwargs				guibg=NONE guifg=#fd971f gui=bold,italic |
    \ hi pythonReturns				guibg=NONE guifg=#FFFFFF gui=bold,italic |
    \ hi pythonBrackets				guibg=NONE guifg=#f92672 gui=bold |
    \ hi pythonBracket              guibg=NONE guifg=#03CEFF gui=bold |
    \ hi pythonDottedName           guibg=NONE guifg=#EE4EB8 gui=bold |
    \ hi pythonFunction             guibg=NONE guifg=#87ff00 gui=bold |
    \ hi pythonMethod               guibg=NONE guifg=#00ebdb gui=bold |
    \ hi semshiAttribute            guibg=NONE guifg=#FF5995 gui=bold 


syn match pythonMethod /\v[[:alpha:]_.]+\ze(\s?\()/
highlight pythonMethod guibg=NONE guifg=#eeee00 gui=NONE 
highlight semshiAttribute guibg=NONE guifg=#CC78FA gui=bold

" \ hi pythonRainbowParentheses		guibg=NONE guifg=#FD971F gui=bold |
" \ hi pythonRainbow_o0				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_o1				guibg=NONE guifg=#FF2600 gui=bold |
" \ hi pythonRainbow_o2				guibg=NONE guifg=#007dff gui=bold |
" \ hi pythonRainbow_o3				guibg=NONE guifg=#eeff00 gui=bold |
" \ hi pythonRainbow_r0				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_r1				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_r2				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_r3				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_p0				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_p1				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_p2				guibg=NONE guifg=#5af7b0 gui=bold |
" \ hi pythonRainbow_p3				guibg=NONE guifg=#5af7b0 gui=bold


" hi rainbowParensShell16          guibg=NONE guifg=#03a9f4 gui=bold
" hi rainbowParensShell15          guibg=NONE guifg=#ffeb3b gui=bold
" hi rainbowParensShell14          guibg=NONE guifg=#673ab7 gui=bold
" hi rainbowParensShell13          guibg=NONE guifg=#4caf50 gui=bold
" hi rainbowParensShell12          guibg=NONE guifg=#e91e63 gui=bold
" hi rainbowParensShell11          guibg=NONE guifg=#009688 gui=bold
" hi rainbowParensShell10          guibg=NONE guifg=#ff5722 gui=bold
"


hi clear SignColumn
hi ALEWarningSign				guibg=NONE guifg=#87ff00 gui=NONE
hi ALEErrorSign					guibg=NONE guifg=#F92672 gui=bold


hi GitGutterAdd					guibg=NONE guifg=#87FF00
hi GitGutterAddLine				guibg=NONE guifg=#87FF00
hi GitGutterChange				guibg=NONE guifg=#FD971F
hi GitGutterDelete				guibg=NONE guifg=#FF2600
hi GitGutterChangeDelete		guibg=NONE guifg=#AE81FF
"
""#A267F5, #F3907e #ffe46b #fefeff
"MATERIAL COLOR SCHEME
" #f44336 #e91e63 #9c27b0 #673ab7 #3f51b5 #2196f3 #03a9f4 #00bcd4
" #009688 #4caf50 #8bc34a #cddc39 #ffeb3b #ffc107 #ff9800 #ff5722
" #795548 #9e9e9e #607d8b
"
" hi GitGutterAddLine				guibg=#NONE guifg=NONE

" #808080
" #1c2022 #1c1c1c #171717 #303030 #292929 #455354 #465457 #71715E #7E8E91 #bcbcbc #f8f8f8 #ffffff
" #ef5939 #FF4050 #FF2600 #FF0000 #F03E4D #F92672 #fd971f #ffff00 #eeff00 #d3ff00 #87ff00 #26C99E
" #5af7b0 #70f0f0 #66D9EF #007dff #526fff #7070F0 #AE81FF #CC78FA #F553BF

" hi pythonTripleQuotes      guibg=NONE guifg=#465457 gui=NONE
" hi pythonStatement		guibg=NONE guifg=#87ff00 gui=bold
" hi link pythonDocstring      SpecialComment
" hi pythonDocstring      guibg=NONE guifg=#465457
" hi pythonBytes      guibg=NONE guifg=#465457 gui=bold
" hi pythonString      guibg=NONE guifg=#465457 gui=bold
" hi link pythonDocstring        Comment
" #EF5939 #FF2600 #F92672 #EE4EB8 #AE81FF  #007DFF #66D9EF #70F0F0
" #FD971F #87ff00 #DEFF00 #EEFF00 #FFFF00
" #1c2022 #CFCFCF #F8f8f0 #455354  #808080 #465457 #707070

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
"
"
" colour1 = dark gray
" colour2 = gray
" colour3 = light gray
" colour4 = light blue
" colour5 = yellow
" colour6 = dark gray
" colour7 = white
" colour8 = dark gray
" colour9 = yellow
" colour10 = pink
" colour11 = green
" colour12 = light gray
" colour13 = white
" colour14 = dark gray
" colour15 = dark gray
" colour16 = red
" colour17 = white

"

" Design templates
" #272727 " background
" #747474 " foreground
" #FF652F " orange
" #FFE400 " yellow
" #14a76c " green
" #D83F87 " pink
" #F8E9A1 
" #F76C6C
" #A8D0E6
" #A64AC9
" #86C232
" #17E9E0
" #474B4F
" #6B6E70
" #FAED26
" #A1C3D1
" --------
" #B39BC8
" #F0EBF4
" #F172A1
" #E64398
" --------
" #C34271
" #F070A1
" #16FFBD
" #12C998
" #439F76
" --------
"  echo -ne '\e]10;#A0A0A0\a'
" #1B1D1E
" #A0A0A0
" #1B1D1E
" #F92672
" #82B414
" #FD971F
" #268BD2
" #8C54FE
" #56C2D6
" #CCCCC6
" #FF5995
" #505354
" #B7EB46
" #FEED6C
" #62ADE3
" #BFA0FE
" #94D8E5
" #F8F8F2



hi ActiveWindow     guibg=#1c1c1c
hi InactiveWindow   guibg=#0D1B22


" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark


"R O Y G T B M P
" NERDTree

exec "hi NERDTreeExecFile guifg=".s:green0
exec "hi NERDTreeDirSlash guifg=".s:teal0
exec "hi NERDTreeCWD guifg=".s:red0

hi NERDTreeExecFile		guifg=#87ff00 gui=bold
hi NERDTreeDirSlash		guifg=#f02e6e gui=bold
hi NERDTreeCWD			guibg=NONE guifg=#f02e6e
""""""""""""
" Clean up "
""""""""""""

hi NERDTreeExecFile		guifg=#87ff00 gui=bold
hi NERDTreeDirSlash		guifg=#f02e6e gui=bold
hi NERDTreeCWD			guibg=NONE guifg=#f02e6e
hi pythonFunction       guifg=#87ff00 gui=bold
""""""""""""
" Clean up "
""""""""""""
hi Function guifg=#b2ff59
hi semshiGlobal guifg=#63ff51
hi pythonParam guifg=#ffa511
hi Title guifg=#00cfff
hi pythonComment guifg=#707070

hi pythonImport guifg=#03a9f4

" hi link Title            semshiGlobal
" syntax match pythonMethod /\v[[:alpha:]_.]+\ze(\s?\()/

unlet s:shade0 s:shade1 s:shade2 s:shade3 s:shade4 s:shade5 s:shade6 s:shade7 s:red0 s:orange0 s:yellow0 s:green0 s:teal0 s:blue0 s:magenta0 s:pink0 s:red1 s:orange1 s:yellow1 s:green1 s:teal1 s:blue1 s:magenta1 s:pink1
