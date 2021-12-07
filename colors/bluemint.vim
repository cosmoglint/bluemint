scriptencoding utf8


let g:colors_name = 'bluemint'


" Palette: <<<
let s:fg        = g:bluemint#palette.fg

let s:bglighter = g:bluemint#palette.bglighter
let s:bglight   = g:bluemint#palette.bglight
let s:bg        = g:bluemint#palette.bg
let s:bgdark    = g:bluemint#palette.bgdark
let s:bgdarker  = g:bluemint#palette.bgdarker

let s:comment   = g:bluemint#palette.comment
let s:selection = g:bluemint#palette.selection
let s:subtle    = g:bluemint#palette.subtle

let s:cyan      = g:bluemint#palette.cyan
let s:green     = g:bluemint#palette.green
let s:orange    = g:bluemint#palette.orange
let s:pink      = g:bluemint#palette.pink
let s:purple    = g:bluemint#palette.purple
let s:red       = g:bluemint#palette.red
let s:yellow    = g:bluemint#palette.yellow


let s:none      = ['NONE', 'NONE']

" >>>


" Helper Script: <<<

function! s:h(scope, fg, ...)                                     " bg, attr_list, special
  let l:fg = copy(a:fg)                                           " get the foreground attribute from the function arguments
  let l:bg = get(a:, 1, ['NONE', 'NONE'])                         " the get function gets the nth argument from a list and if n is outside the list, it will return default value. here a: is the argument list, 1 is n, NONE, NONE is default value
  

  " to do add special characters support 
  " to do add attributes support



  " this is just a new highlight  group which we create a list with the attributes and later execute it as a string
  " this is basically naming our new group with the name configured in function argument. checkout what the highlight function does with :help highlight

  let l:hl_string = [
    \ 'highlight', a:scope,
    \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
    \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
    \]

  execute join(l:hl_string, ' ')
endfunction

" >>>

if !exists('g:bluemint_colorterm')
  let g:bluemint_colorterm = 1
endif

" HighlightGroups: <<<<

" call s:h('', s:none, s:bglight)                                  " set bglight color for empty spaces
call s:h('BluemintBgLighter', s:none, s:bglighter)
call s:h('BluemintBgDark', s:none, s:bgdark)
call s:h('BluemintBgDarker', s:none, s:bgdarker)

call s:h('BluemintComment', s:comment)


call s:h('BluemintFg', s:fg, s:none)

call s:h('BluemintComment', s:comment)

call s:h('BluemintSelection', s:selection)

call s:h('BluemintSubtle', s:subtle)

call s:h('BluemintCyan', s:cyan)

call s:h('BluemintGreen', s:green)

call s:h('BluemintOrange', s:orange)

call s:h('BluemintPink', s:pink)

call s:h('BluemintPurple', s:purple)

call s:h('BluemintRed', s:red)

call s:h('BluemintYellow', s:yellow)

call s:h('BluemintBoundary', s:comment, s:bgdark)

" >>>

" UI Config: <<<

set background=dark

" some plugins may overwrite
call s:h('Normal', s:fg, g:bluemint_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:none])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:none])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:none])
call s:h('CursorLine', s:none, s:subtle)

hi! link FoldColumn   BluemintSubtle
hi! link ColorColumn  BluemintBgDark
hi! link CursorColumn CursorLine
hi! link MoreMsg      BluemintFg
hi! link NonText      BluemintSubtle
hi! link TabLineFill  BluemintBgDark
hi! link TabLineSel   BluemintRed
hi! link TabLine      BluemintBoundary
hi! link TabLineFill  BluemintBgDark
call s:h('LineNr', s:comment)
call s:h('SignColumn', s:comment)

hi! link ColorColumn        BluemintBgDark

hi! link Comment            BluemintComment          
hi! link Underlined         BluemintFgUnderline             
hi! link Todo               BluemintTodo       

hi! link Error              BluemintError        
hi! link SpellBad           BluemintErrorLine           
hi! link SpellLocal         BluemintWarnLine             
hi! link SpellCap           BluemintInfoLine           
hi! link SpellRare          BluemintInfoLine            

hi! link Constant           BluemintPurple           
hi! link String             BluemintYellow         
hi! link Character          BluemintPink            
hi! link Number             BluemintPurple         
hi! link Boolean            BluemintPurple          
hi! link Float              BluemintPurple        

hi! link Identifier         BluemintFg             
hi! link Function           BluemintGreen           

hi! link Statement          BluemintPink            
hi! link Conditional        BluemintPink              
hi! link Repeat             BluemintPink         
hi! link Label              BluemintPink        
hi! link Operator           BluemintPink           
hi! link Keyword            BluemintPink          
hi! link Exception          BluemintPink            

hi! link PreProc            BluemintPink          
hi! link Include            BluemintPink          
hi! link Define             BluemintPink         
hi! link Macro              BluemintPink        
hi! link PreCondit          BluemintPink            
hi! link StorageClass       BluemintPink               
hi! link Structure          BluemintPink            
hi! link Typedef            BluemintPink          

hi! link Type               BluemintCyan       

hi! link Delimiter          BluemintFg            

hi! link Special            BluemintPink          
hi! link Tag                BluemintCyan      
hi! link helpHyperTextJump  BluemintLink                    
hi! link helpCommand        BluemintPurple              
hi! link helpExample        BluemintGreen              

" >>>
