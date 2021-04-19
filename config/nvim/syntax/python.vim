
" For version 5.x: Clear all syntax items
" For versions greater than 6.x: Quit when a syntax file was already loaded
if v:version < 600
  syntax clear
elseif exists('b:current_syntax')
  finish
endif

" Check Python files with flake8 and pylint.
let b:ale_linters = ['flake8', 'pylint']
" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']
" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0

"
" Commands
"
command! -buffer Python2Syntax let b:python_version_2 = 1 | let &syntax=&syntax
command! -buffer Python3Syntax let b:python_version_2 = 0 | let &syntax=&syntax

" Enable option if it's not defined
function! s:EnableByDefault(name)
  if !exists(a:name)
    let {a:name} = 1
  endif
endfunction

" setlocal omnifunc=jedi#completions

" Check if option is enabled
function! s:Enabled(name)
  return exists(a:name) && {a:name}
endfunction

" Is it Python 2 syntax?
function! s:Python2Syntax()
  if exists('b:python_version_2')
      return b:python_version_2
  endif
  return s:Enabled('g:python_version_2')
endfunction

"
" Default options
"

call s:EnableByDefault('g:python_slow_sync')
call s:EnableByDefault('g:python_highlight_builtin_funcs_kwarg')

if s:Enabled('g:python_highlight_all')
  call s:EnableByDefault('g:python_highlight_builtins')
  if s:Enabled('g:python_highlight_builtins')
    call s:EnableByDefault('g:python_highlight_builtin_objs')
    call s:EnableByDefault('g:python_highlight_builtin_funcs')
  endif
  call s:EnableByDefault('g:python_highlight_exceptions')
  call s:EnableByDefault('g:python_highlight_string_formatting')
  call s:EnableByDefault('g:python_highlight_string_format')
  call s:EnableByDefault('g:python_highlight_string_templates')
  call s:EnableByDefault('g:python_highlight_indent_errors')
  call s:EnableByDefault('g:python_highlight_space_errors')
  call s:EnableByDefault('g:python_highlight_doctests')
  call s:EnableByDefault('g:python_print_as_function')
  call s:EnableByDefault('g:python_highlight_class_vars')
  call s:EnableByDefault('g:python_highlight_operators')
endif

"
" Keywords
"

syn keyword pythonStatement     break continue del return pass yield global assert lambda with np tf
syn keyword pythonLibraries		np tf plt os time sys
syn keyword pythonStatement     raise nextgroup=pythonExClass skipwhite
syn keyword pythonStatement     def class nextgroup=pythonFunction skipwhite
if s:Enabled('g:python_highlight_class_vars')
  syn keyword pythonClassVar    self cls
endif
syn keyword pythonRepeat        for while
syn keyword pythonConditional   if elif else
syn keyword pythonException     try except finally
" The standard pyrex.vim unconditionally removes the pythonInclude group, so
" we provide a dummy group here to avoid crashing pyrex.vim.
syn keyword pythonInclude       import
syn keyword pythonImport        import
syn match pythonRaiseFromStatement      '\<from\>'
syn match pythonImport          '^\s*\zsfrom\>'
syn match Title					/[A-Z]\{2,\}/


if s:Python2Syntax()
  if !s:Enabled('g:python_print_as_function')
    syn keyword pythonStatement  print
  endif
  syn keyword pythonStatement   exec
  syn keyword pythonImport      as
  syn match   pythonFunction    '[a-zA-Z_][a-zA-Z0-9_]*' display contained
else
  syn keyword pythonStatement   as nonlocal
  syn match   pythonStatement   '\v\.@<!<await>'
  syn match   pythonFunction    '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*' display contained
  syn match   pythonStatement   '\<async\s\+def\>' nextgroup=pythonFunction skipwhite
  syn match   pythonStatement   '\<async\s\+with\>'
  syn match   pythonStatement   '\<async\s\+for\>'
  syn cluster pythonExpression contains=pythonStatement,pythonRepeat,pythonConditional,pythonOperator,pythonNumber,pythonHexNumber,pythonOctNumber,pythonBinNumber,pythonFloat,pythonString,pythonBytes,pythonBoolean,pythonBuiltinObj,pythonBuiltinFunc
endif

" NOTE: @pfdevilliers added this
" This was added based on the guidelines from Stackoverflow.
" http://stackoverflow.com/questions/8312132/vim-editing-the-python-vim-syntax-file-to-highlight-like-textmate
" It is really a hack job ignoring best practices. I royally screwed up the
" regular expressions which led to the definition of the pythonBrackets. 
" This should be improved and simplified.
syn match   pythonFunction
      \ "\%(\%(def\s\|class\s\|@\)\s*\)\@<=\h\%(\w\|\.\)*" contained nextgroup=pythonVars
" NOTE: @Kamushin fix this
"    @mock(a=["(aa)"])
"    def foo(self, str_a='aaa()aaa):')
syn region pythonVars start="(" end="):*\n" contained contains=pythonParameters transparent keepend
syn match pythonParameters "[^,:]*" contained contains=pythonParam,pythonBrackets skipwhite
syn match pythonParam "=[^,]*" contained contains=pythonExtraOperator,pythonBuiltin,pythonConstant,pythonStatement,pythonNumber,pythonString skipwhite
syn match pythonBrackets "[(|)]" contained skipwhite

" NOTE: @pfdevilliers added this
" The same as the previous definitions but for the python class.
syn match   pythonClass
      \ "\%(\%(def\s\|class\s\|@\)\s*\)\@<=\h\%(\w\|\.\)*" contained nextgroup=pythonClassVars
syn region pythonClassVars start="(" end=")" contained contains=pythonClassParameters transparent keepend
syn match pythonClassParameters "[^,]*" contained contains=pythonBuiltin,pythonBrackets skipwhite

" NOTE: @pfdevilliers added this
" The same as the previous definitions but for the python class.
syn match   pythonClass
      \ "\%(\%(def\s\|class\s\|@\)\s*\)\@<=\h\%(\w\|\.\)*" contained nextgroup=pythonClassVars
syn region pythonClassVars start="(" end=")" contained contains=pythonClassParameters transparent keepend
syn match pythonClassParameters "[^,]*" contained contains=pythonBuiltin,pythonBrackets skipwhite

"
" Operators
"
syn keyword pythonWordOperator      and in is not or range
if s:Enabled('g:python_highlight_operators')
    syn match pythonOperator        '\V=\|-\|+\|*\|@\|/\|%\|&\||\|^\|~\|<\|>\|!='
endif
syn match pythonError           '[$?]\|\([-+@%&|^~]\)\1\{1,}\|\([=*/<>]\)\2\{2,}\|\([+@/%&|^~<>]\)\3\@![-+*@/%&|^~<>]\|\*\*[*@/%&|^<>]\|=[*@/%&|^<>]\|-[+*@/%&|^~<]\|[<!>]\+=\{2,}\|!\{2,}=\+' display

"
" Decorators (new in Python 2.4)
"

syn match   pythonDecorator    '^\s*\zs@' display nextgroup=pythonDottedName skipwhite
if s:Python2Syntax()
  syn match   pythonDottedName '[a-zA-Z_][a-zA-Z0-9_]*\%(\.[a-zA-Z_][a-zA-Z0-9_]*\)*' display contained
else
  syn match   pythonDottedName '\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\%(\.\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\)*' display contained
endif
syn match   pythonDot        '\.' display containedin=pythonDottedName

"
" Comments
"

syn match   pythonComment       '#.*$' display contains=pythonTodo,pythonArgs,pythonReturns,pythonNote,@Spell
if !s:Enabled('g:python_highlight_file_headers_as_comments')
  syn match   pythonRun         '\%^#!.*$'
  syn match   pythonCoding      '\%^.*\%(\n.*\)\?#.*coding[:=]\s*[0-9A-Za-z-_.]\+.*$'
endif
syn keyword pythonTodo          TODO FIXME XXX contained
syn keyword pythonNote			NOTE NOTICE
syn keyword pythonArgs			Args Arguments Params Parameters
syn keyword pythonReturns		Returns

"
" Errors
"

syn match pythonError           '\<\d\+[^0-9[:space:]]\+\>' display

" Mixing spaces and tabs also may be used for pretty formatting multiline
" statements
if s:Enabled('g:python_highlight_indent_errors')
  syn match pythonIndentError   '^\s*\%( \t\|\t \)\s*\S'me=e-1 display
endif

" Trailing space errors
if s:Enabled('g:python_highlight_space_errors')
  syn match pythonSpaceError    '\s\+$' display
endif

"
" Strings
"

if s:Python2Syntax()
  " Python 2 strings
  syn region pythonString   start=+[bB]\='+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,@Spell
  syn region pythonString   start=+[bB]\="+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,@Spell
  syn region pythonString   start=+[bB]\="""+ skip=+\\"+ end=+"""+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest2,pythonSpaceError,@Spell
  syn region pythonString   start=+[bB]\='''+ skip=+\\'+ end=+'''+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest,pythonSpaceError,@Spell
  syn region pythonDocstring   start=+'''+ skip=+\\'+ end=+'''+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest,pythonSpaceError,@Spell,pythonArgs,pythonKwargs
  syn region pythonDocstring   start=+"""+ skip=+\\"+ end=+"""+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest2,pythonSpaceError,@Spell,pythonArgs,pythonKwargs
else
  " Python 3 byte strings
  syn region pythonBytes    start=+[bB]'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonBytesError,pythonBytesContent,@Spell
  syn region pythonBytes    start=+[bB]"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonBytesError,pythonBytesContent,@Spell
  syn region pythonBytes    start=+[bB]'''+ skip=+\\'+ end=+'''+ keepend contains=pythonBytesError,pythonBytesContent,pythonDocTest,pythonSpaceError,@Spell,pythonArgs,pythonKwargs
  syn region pythonBytes    start=+[bB]"""+ skip=+\\"+ end=+"""+ keepend contains=pythonBytesError,pythonBytesContent,pythonDocTest2,pythonSpaceError,@Spell,pythonArgs,pythonKwargs

  syn match pythonBytesError    '.\+' display contained
  syn match pythonBytesContent  '[\u0000-\u00ff]\+' display contained contains=pythonBytesEscape,pythonBytesEscapeError
endif

syn match pythonBytesEscape       +\\[abfnrtv'"\\]+ display contained
syn match pythonBytesEscape       '\\\o\o\=\o\=' display contained
syn match pythonBytesEscapeError  '\\\o\{,2}[89]' display contained
syn match pythonBytesEscape       '\\x\x\{2}' display contained
syn match pythonBytesEscapeError  '\\x\x\=\X' display contained
syn match pythonBytesEscape       '\\$'

syn match pythonUniEscape         '\\u\x\{4}' display contained
syn match pythonUniEscapeError    '\\u\x\{,3}\X' display contained
syn match pythonUniEscape         '\\U\x\{8}' display contained
syn match pythonUniEscapeError    '\\U\x\{,7}\X' display contained
syn match pythonUniEscape         '\\N{[A-Z ]\+}' display contained
syn match pythonUniEscapeError    '\\N{[^A-Z ]\+}' display contained

if s:Python2Syntax()
  " Python 2 Unicode strings
  syn region pythonUniString  start=+[uU]'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,@Spell
  syn region pythonUniString  start=+[uU]"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,@Spell
  syn region pythonUniString  start=+[uU]'''+ skip=+\\'+ end=+'''+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest,pythonSpaceError,@Spell
  syn region pythonUniString  start=+[uU]"""+ skip=+\\"+ end=+"""+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest2,pythonSpaceError,@Spell
else
  " Python 3 strings
  syn region pythonString   start=+'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,@Spell,
  syn region pythonString   start=+"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,@Spell
  syn region pythonString   start=+'''+ skip=+\\'+ end=+'''+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest,pythonSpaceError,@Spell
  syn region pythonString   start=+"""+ skip=+\\"+ end=+"""+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest2,pythonSpaceError,@Spell

  syn region pythonFString   start=+[fF]'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,@Spell
  syn region pythonFString   start=+[fF]"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,@Spell
  syn region pythonFString   start=+[fF]'''+ skip=+\\'+ end=+'''+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest,pythonSpaceError,@Spell
  syn region pythonFString   start=+[fF]"""+ skip=+\\"+ end=+"""+ keepend contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest2,pythonSpaceError,@Spell
endif

if s:Python2Syntax()
  " Python 2 Unicode raw strings
  syn region pythonUniRawString start=+[uU][rR]'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonRawEscape,pythonUniRawEscape,pythonUniRawEscapeError,@Spell
  syn region pythonUniRawString start=+[uU][rR]"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonRawEscape,pythonUniRawEscape,pythonUniRawEscapeError,@Spell
  syn region pythonUniRawString start=+[uU][rR]'''+ skip=+\\'+ end=+'''+ keepend contains=pythonUniRawEscape,pythonUniRawEscapeError,pythonDocTest,pythonSpaceError,@Spell
  syn region pythonUniRawString start=+[uU][rR]"""+ skip=+\\"+ end=+"""+ keepend contains=pythonUniRawEscape,pythonUniRawEscapeError,pythonDocTest2,pythonSpaceError,@Spell

  syn match  pythonUniRawEscape       '\%([^\\]\%(\\\\\)*\)\@<=\\u\x\{4}' display contained
  syn match  pythonUniRawEscapeError  '\%([^\\]\%(\\\\\)*\)\@<=\\u\x\{,3}\X' display contained
endif

" Python 2/3 raw strings
if s:Python2Syntax()
  syn region pythonRawString  start=+[bB]\=[rR]'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonRawEscape,@Spell
  syn region pythonRawString  start=+[bB]\=[rR]"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonRawEscape,@Spell
  syn region pythonRawString  start=+[bB]\=[rR]'''+ skip=+\\'+ end=+'''+ keepend contains=pythonDocTest,pythonSpaceError,@Spell
  syn region pythonRawString  start=+[bB]\=[rR]"""+ skip=+\\"+ end=+"""+ keepend contains=pythonDocTest2,pythonSpaceError,@Spell
else
  syn region pythonRawString  start=+[rR]'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonRawEscape,@Spell
  syn region pythonRawString  start=+[rR]"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonRawEscape,@Spell
  syn region pythonRawString  start=+[rR]'''+ skip=+\\'+ end=+'''+ keepend contains=pythonDocTest,pythonSpaceError,@Spell
  syn region pythonRawString  start=+[rR]"""+ skip=+\\"+ end=+"""+ keepend contains=pythonDocTest2,pythonSpaceError,@Spell

  syn region pythonRawFString   start=+\%([fF][rR]\|[rR][fF]\)'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonRawEscape,@Spell
  syn region pythonRawFString   start=+\%([fF][rR]\|[rR][fF]\)"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonRawEscape,@Spell
  syn region pythonRawFString   start=+\%([fF][rR]\|[rR][fF]\)'''+ skip=+\\'+ end=+'''+ keepend contains=pythonDocTest,pythonSpaceError,@Spell
  syn region pythonRawFString   start=+\%([fF][rR]\|[rR][fF]\)"""+ skip=+\\"+ end=+"""+ keepend contains=pythonDocTest,pythonSpaceError,@Spell

  syn region pythonRawBytes  start=+\%([bB][rR]\|[rR][bB]\)'+ skip=+\\\\\|\\'\|\\$+ excludenl end=+'+ end=+$+ keepend contains=pythonRawEscape,@Spell
  syn region pythonRawBytes  start=+\%([bB][rR]\|[rR][bB]\)"+ skip=+\\\\\|\\"\|\\$+ excludenl end=+"+ end=+$+ keepend contains=pythonRawEscape,@Spell
  syn region pythonRawBytes  start=+\%([bB][rR]\|[rR][bB]\)'''+ skip=+\\'+ end=+'''+ keepend contains=pythonDocTest,pythonSpaceError,@Spell
  syn region pythonRawBytes  start=+\%([bB][rR]\|[rR][bB]\)"""+ skip=+\\"+ end=+"""+ keepend contains=pythonDocTest2,pythonSpaceError,@Spell
endif

syn match pythonRawEscape +\\['"]+ display contained

if s:Enabled('g:python_highlight_string_formatting')
  " % operator string formatting
  if s:Python2Syntax()
    syn match pythonStrFormatting '%\%(([^)]\+)\)\=[-#0 +]*\d*\%(\.\d\+\)\=[hlL]\=[diouxXeEfFgGcrs%]' contained containedin=pythonString,pythonUniString,pythonUniRawString,pythonRawString,pythonBytesContent
    syn match pythonStrFormatting '%[-#0 +]*\%(\*\|\d\+\)\=\%(\.\%(\*\|\d\+\)\)\=[hlL]\=[diouxXeEfFgGcrs%]' contained containedin=pythonString,pythonUniString,pythonUniRawString,pythonRawString,pythonBytesContent
  else
    syn match pythonStrFormatting '%\%(([^)]\+)\)\=[-#0 +]*\d*\%(\.\d\+\)\=[hlL]\=[diouxXeEfFgGcrs%]' contained containedin=pythonString,pythonRawString,pythonBytesContent
    syn match pythonStrFormatting '%[-#0 +]*\%(\*\|\d\+\)\=\%(\.\%(\*\|\d\+\)\)\=[hlL]\=[diouxXeEfFgGcrs%]' contained containedin=pythonString,pythonRawString,pythonBytesContent
  endif
endif

if s:Enabled('g:python_highlight_string_format')
  " str.format syntax
  if s:Python2Syntax()
    syn match pythonStrFormat '{{\|}}' contained containedin=pythonString,pythonUniString,pythonUniRawString,pythonRawString
    syn match pythonStrFormat '{\%(\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\d\+\)\=\%(\.\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\[\%(\d\+\|[^!:\}]\+\)\]\)*\%(![rsa]\)\=\%(:\%({\%(\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\d\+\)}\|\%([^}]\=[<>=^]\)\=[ +-]\=#\=0\=\d*,\=\%(\.\d\+\)\=[bcdeEfFgGnosxX%]\=\)\=\)\=}' contained containedin=pythonString,pythonUniString,pythonUniRawString,pythonRawString
  else
    syn match pythonStrFormat "{\%(\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\d\+\)\=\%(\.\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\[\%(\d\+\|[^!:\}]\+\)\]\)*\%(![rsa]\)\=\%(:\%({\%(\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\d\+\)}\|\%([^}]\=[<>=^]\)\=[ +-]\=#\=0\=\d*,\=\%(\.\d\+\)\=[bcdeEfFgGnosxX%]\=\)\=\)\=}" contained containedin=pythonString,pythonRawString
    syn region pythonStrInterpRegion start="{"he=e+1,rs=e+1 end="\%(![rsa]\)\=\%(:\%({\%(\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*\|\d\+\)}\|\%([^}]\=[<>=^]\)\=[ +-]\=#\=0\=\d*,\=\%(\.\d\+\)\=[bcdeEfFgGnosxX%]\=\)\=\)\=}"hs=s-1,re=s-1 extend contained containedin=pythonFString,pythonRawFString contains=pythonStrInterpRegion,@pythonExpression
    syn match pythonStrFormat "{{\|}}" contained containedin=pythonString,pythonRawString,pythonFString,pythonRawFString
  endif
endif

if s:Enabled('g:python_highlight_string_templates')
  " string.Template format
  if s:Python2Syntax()
    syn match pythonStrTemplate '\$\$' contained containedin=pythonString,pythonUniString,pythonUniRawString,pythonRawString
    syn match pythonStrTemplate '\${[a-zA-Z_][a-zA-Z0-9_]*}' contained containedin=pythonString,pythonUniString,pythonUniRawString,pythonRawString
    syn match pythonStrTemplate '\$[a-zA-Z_][a-zA-Z0-9_]*' contained containedin=pythonString,pythonUniString,pythonUniRawString,pythonRawString
  else
    syn match pythonStrTemplate '\$\$' contained containedin=pythonString,pythonRawString
    syn match pythonStrTemplate '\${[a-zA-Z_][a-zA-Z0-9_]*}' contained containedin=pythonString,pythonRawString
    syn match pythonStrTemplate '\$[a-zA-Z_][a-zA-Z0-9_]*' contained containedin=pythonString,pythonRawString
  endif
endif

if s:Enabled('g:python_highlight_doctests')
  " DocTests
  syn region pythonDocTest   start='^\s*>>>' skip=+\\'+ end=+'''+he=s-1 end='^\s*$' contained
  syn region pythonDocTest2  start='^\s*>>>' skip=+\\"+ end=+"""+he=s-1 end='^\s*$' contained
endif

" Highlight docstrings as comments
" syn region Comment				start=/"""/ end=/"""/
" syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?"""+ skip=+\\"+ end=+"""+ keepend contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError,...
" syn region pythonDocstring  start=+^\s*[uU]\?[rR]\?'''+ skip=+\\'+ end=+'''+ keepend contains=pythonEscape,@Spell,pythonDoctest,pythonDocTest2,pythonSpaceError,...
syn region pythonDocString start=+^\s*"""+ end=+"""+ keepend fold contains=pythonArgs,pythonReturns,pythonTodo,pythonNote,pythonArgs,pythonKwargs,...
" HiLink pythonDocString        Comment
syn region pythonDocstring   start=+'''+ skip=+\\'+ end=+'''+ keepend fold contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest,pythonSpaceError,@Spell,pythonArgs,pythonKwargs
syn region pythonDocstring   start=+"""+ skip=+\\"+ end=+"""+ keepend fold contains=pythonBytesEscape,pythonBytesEscapeError,pythonUniEscape,pythonUniEscapeError,pythonDocTest2,pythonSpaceError,@Spell,pythonArgs,pythonKwargs

" syn region indentBlock start=/:\n\+\z(\s\+\)\S/ skip=/^\%(\z1\S\|^$\)/ end=/^\z1\@!.*/me=s-1 keepend fold contains=...

"
" Numbers (ints, longs, floats, complex)
"

if s:Python2Syntax()
  syn match   pythonHexError    '\<0[xX]\x*[g-zG-Z]\+\x*[lL]\=\>' display
  syn match   pythonOctError    '\<0[oO]\=\o*\D\+\d*[lL]\=\>' display
  syn match   pythonBinError    '\<0[bB][01]*\D\+\d*[lL]\=\>' display

  syn match   pythonHexNumber   '\<0[xX]\x\+[lL]\=\>' display
  syn match   pythonOctNumber   '\<0[oO]\o\+[lL]\=\>' display
  syn match   pythonBinNumber   '\<0[bB][01]\+[lL]\=\>' display

  syn match   pythonNumberError '\<\d\+\D[lL]\=\>' display
  syn match   pythonNumber      '\<\d[lL]\=\>' display
  syn match   pythonNumber      '\<[0-9]\d\+[lL]\=\>' display
  syn match   pythonNumber      '\<\d\+[lLjJ]\>' display

  syn match   pythonOctError    '\<0[oO]\=\o*[8-9]\d*[lL]\=\>' display
  syn match   pythonBinError    '\<0[bB][01]*[2-9]\d*[lL]\=\>' display

  syn match   pythonFloat       '\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>' display
  syn match   pythonFloat       '\<\d\+[eE][+-]\=\d\+[jJ]\=\>' display
  syn match   pythonFloat       '\<\d\+\.\d*\%([eE][+-]\=\d\+\)\=[jJ]\=' display
else
  syn match   pythonOctError    '\<0[oO]\=\o*\D\+\d*\>' display
  " pythonHexError comes after pythonOctError so that 0xffffl is pythonHexError
  syn match   pythonHexError    '\<0[xX]\x*[g-zG-Z]\x*\>' display
  syn match   pythonBinError    '\<0[bB][01]*\D\+\d*\>' display

  syn match   pythonHexNumber   '\<0[xX][_0-9a-fA-F]*\x\>' display
  syn match   pythonOctNumber   '\<0[oO][_0-7]*\o\>' display
  syn match   pythonBinNumber   '\<0[bB][_01]*[01]\>' display

  syn match   pythonNumberError '\<\d[_0-9]*\D\>' display
  syn match   pythonNumberError '\<0[_0-9]\+\>' display
  syn match   pythonNumberError '\<0_x\S*\>' display
  syn match   pythonNumberError '\<0[bBxXoO][_0-9a-fA-F]*_\>' display
  syn match   pythonNumberError '\<\d[_0-9]*_\>' display
  syn match   pythonNumber      '\<\d\>' display
  syn match   pythonNumber      '\<[1-9][_0-9]*\d\>' display
  syn match   pythonNumber      '\<\d[jJ]\>' display
  syn match   pythonNumber      '\<[1-9][_0-9]*\d[jJ]\>' display

  syn match   pythonOctError    '\<0[oO]\=\o*[8-9]\d*\>' display
  syn match   pythonBinError    '\<0[bB][01]*[2-9]\d*\>' display

  syn match   pythonFloat       '\.\d\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=\>' display
  syn match   pythonFloat       '\<\d\%([_0-9]*\d\)\=[eE][+-]\=\d\%([_0-9]*\d\)\=[jJ]\=\>' display
  syn match   pythonFloat       '\<\d\%([_0-9]*\d\)\=\.\d\%([_0-9]*\d\)\=\%([eE][+-]\=\d\%([_0-9]*\d\)\=\)\=[jJ]\=' display
endif

"
" Builtin objects and types
"

" if s:Enabled('g:python_highlight_builtin_objs')
syn keyword pythonNone        None
syn keyword pythonBoolean     True False
syn keyword pythonBuiltinObj  Ellipsis NotImplemented
syn match pythonBuiltinObj    '\v\.@<!<%(object|bool|int|float|tuple|str|list|dict|set|frozenset|bytearray|bytes|range)>'
syn keyword pythonBuiltinObj  __debug__ __doc__ __file__ __name__ __package__
syn keyword pythonBuiltinObj  __loader__ __spec__ __path__ __cached__
" endif

"
" Builtin functions
"
if s:Enabled('g:python_highlight_builtin_funcs')
  let s:funcs_re = '__import__|abs|all|any|bin|callable|chr|classmethod|compile|complex|delattr|dir|divmod|enumerate|eval|filter|format|getattr|globals|hasattr|hash|help|hex|id|input|isinstance|issubclass|iter|len|locals|map|max|memoryview|min|next|oct|open|ord|pow|property|range|repr|reversed|round|setattr|slice|sorted|staticmethod|sum|super|type|vars|zip'

  if s:Python2Syntax()
    let s:funcs_re .= '|apply|basestring|buffer|cmp|coerce|execfile|file|intern|long|raw_input|reduce|reload|unichr|unicode|xrange'
    if s:Enabled('g:python_print_as_function')
      let s:funcs_re .= '|print'
    endif
  else
      let s:funcs_re .= '|ascii|exec|print'
  endif

  let s:funcs_re = 'syn match pythonBuiltinFunc ''\v\.@<!\zs<%(' . s:funcs_re . ')>'

  if !s:Enabled('g:python_highlight_builtin_funcs_kwarg')
      let s:funcs_re .= '\=@!'
  endif

  execute s:funcs_re . ''''
  unlet s:funcs_re
endif

"
" Builtin exceptions and warnings
"

if s:Enabled('g:python_highlight_exceptions')
    let s:exs_re = 'BaseException|Exception|ArithmeticError|LookupError|EnvironmentError|AssertionError|AttributeError|BufferError|EOFError|FloatingPointError|GeneratorExit|IOError|ImportError|IndexError|KeyError|KeyboardInterrupt|MemoryError|NameError|NotImplementedError|OSError|OverflowError|ReferenceError|RuntimeError|StopIteration|SyntaxError|IndentationError|TabError|SystemError|SystemExit|TypeError|UnboundLocalError|UnicodeError|UnicodeEncodeError|UnicodeDecodeError|UnicodeTranslateError|ValueError|VMSError|WindowsError|ZeroDivisionError|Warning|UserWarning|BytesWarning|DeprecationWarning|PendingDepricationWarning|SyntaxWarning|RuntimeWarning|FutureWarning|ImportWarning|UnicodeWarning'

  if s:Python2Syntax()
      let s:exs_re .= '|StandardError'
  else
      let s:exs_re .= '|BlockingIOError|ChildProcessError|ConnectionError|BrokenPipeError|ConnectionAbortedError|ConnectionRefusedError|ConnectionResetError|FileExistsError|FileNotFoundError|InterruptedError|IsADirectoryError|NotADirectoryError|PermissionError|ProcessLookupError|TimeoutError|StopAsyncIteration|ResourceWarning'
  endif

  execute 'syn match pythonExClass ''\v\.@<!\zs<%(' . s:exs_re . ')>'''
  unlet s:exs_re
endif

if s:Enabled('g:python_slow_sync')
  syn sync minlines=2000
else
  " This is fast but code inside triple quoted strings screws it up. It
  " is impossible to fix because the only way to know if you are inside a
  " triple quoted string is to start from the beginning of the file.
  syn sync match pythonSync grouphere NONE '):$'
  syn sync maxlines=200
endif

" if v:version >= 508 || !exists('did_python_syn_inits')
"   if v:version <= 508
"     let did_python_syn_inits = 1
"     command -nargs=+ HiLink hi link <args>
"   else
"     command -nargs=+ HiLink hi def link <args>
" endif
" endif

syntax match PythonArg "\v[\(\,]\s{-}\zs\w+\ze\s{-}\=(\=)@!"
" hi PythonArg ctermfg = 214 guifg = #ffaf00

" NOTE: @pfdevilliers added this
" I copied this directly from the ruby.vim syntax file inorder to highlight all
" the operators. This must offcourse be revised to only contain the operators
" that exists in python.
syn match  pythonExtraOperator	 "\%([~!^&|*/%+-]\|\%(class\s*\)\@<!<<\|<=>\|<=\|\%(<\|\<class\s\+\u\w*\s*\)\@<!<[^<]\@=\|===\|==\|=\~\|>>\|>=\|=\@<!>\|\*\*\|\.\.\.\|\.\.\|::\|=\)"
syn match  pythonExtraPseudoOperator  "\%(-=\|/=\|\*\*=\|\*=\|&&=\|&=\|&&\|||=\||=\|||\|%=\|+=\|!\~\|!=\)"

syn region pythonVars start="(" end="):*\n" contained contains=pythonParameters transparent keepend
syn match pythonParameters "[^,:]*" contained contains=pythonParam,pythonBrackets skipwhite
syn match pythonParam "=[^,]*" contained contains=pythonExtraOperator,pythonBuiltin,pythonConstant,pythonStatement,pythonNumber,pythonString skipwhite
syn match pythonBrackets "[(|)]" contained skipwhite

" NOTE: @pfdevilliers added this
" The same as the previous definitions but for the python class.
syn match   pythonClass
      \ "\%(\%(def\s\|class\s\|@\)\s*\)\@<=\h\%(\w\|\.\)*" contained nextgroup=pythonClassVars
syn region pythonClassVars start="(" end=")" contained contains=pythonClassParameters transparent keepend
syn match pythonClassParameters "[^,]*" contained contains=pythonBuiltin,pythonBrackets skipwhite

" Sync at the beginning of class, function, or method definition.
syn sync match pythonSync grouphere NONE "^\s*\%(def\|class\)\s\+\h\w*\s*("

if version >= 508 || !exists("did_python_syn_inits")
  if version <= 508
    let did_python_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink pythonParameters Identifier
  HiLink pythonParam Normal
  " HiLink pythonBrackets Normal
  HiLink pythonClassParameters InheritUnderlined
  HiLink pythonExtraOperator Operator
  HiLink pythonExtraPseudoOperator Operator
  " HiLink pythonRainbow_p0 pythonClassVars

  HiLink pythonVars Special


  HiLink pythonStatement        Statement
  HiLink pythonRaiseFromStatement   Statement
  HiLink pythonImport           Include
  HiLink pythonFunction         Function
  HiLink pythonConditional      Conditional
  HiLink pythonRepeat           Repeat
  HiLink pythonException        Exception
  HiLink pythonOperator         Operator
  HiLink pythonWordOperator     Conditional

  HiLink pythonDecorator        Define
  HiLink pythonDottedName       Function
  HiLink pythonDot              Normal

  HiLink pythonComment          Comment
  if !s:Enabled('g:python_highlight_file_headers_as_comments')
    HiLink pythonCoding           Special
    HiLink pythonRun              Special
  endif
  HiLink pythonTodo             Todo

  HiLink pythonError            Error
  HiLink pythonIndentError      Error
  HiLink pythonSpaceError       Error

  HiLink pythonString           String
  HiLink pythonDocString        Comment
  HiLink pythonRawString        String
  HiLink pythonRawEscape        Special

  HiLink pythonUniEscape        Special
  HiLink pythonUniEscapeError   Error

  if s:Python2Syntax()
    HiLink pythonDocString			Comment
    HiLink pythonUniString          String
    HiLink pythonUniRawString       String
    HiLink pythonUniRawEscape       Special
    HiLink pythonUniRawEscapeError  Error
  else
    HiLink pythonBytes              String
    HiLink pythonRawBytes           String
    HiLink pythonBytesContent       String
    HiLink pythonBytesError         Error
    HiLink pythonBytesEscape        Special
    HiLink pythonBytesEscapeError   Error
    HiLink pythonFString            String
    HiLink pythonRawFString         String
    HiLink pythonStrInterpRegion    Special
  endif

  HiLink pythonFString          FString
  HiLink pythonRawFString       RawFString
  HiLink pythonStrFormatting    Special
  HiLink pythonStrFormat        Special
  HiLink pythonStrTemplate      Special

  HiLink pythonDocTest          Special
  HiLink pythonDocTest2         Special
  " HiLink pythonDocstring		SpecialComment
  " HiLink pythonDocstring		Comment

  HiLink pythonNumber           Number
  HiLink pythonHexNumber        Number
  HiLink pythonOctNumber        Number
  HiLink pythonBinNumber        Number
  HiLink pythonFloat            Float
  HiLink pythonNumberError      Error
  HiLink pythonOctError         Error
  HiLink pythonHexError         Error
  HiLink pythonBinError         Error

  HiLink pythonBoolean          Boolean
  HiLink pythonNone             Constant

  HiLink pythonBuiltinObj       Structure
  HiLink pythonBuiltinFunc      Function

  HiLink pythonExClass          Structure
  HiLink pythonClassVar         Identifier
  HiLink pythonBrackets			Exception
  " HiLink pythonBrackets Normal

  delcommand HiLink
endif

let b:current_syntax = 'python'


"highlight current line
set cul
set cursorcolumn
