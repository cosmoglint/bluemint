
" Palette: {{{

let g:bluemint#palette           = {}
let g:bluemint#palette.fg        = ['#6db3b3',  73]

let g:bluemint#palette.bglighter = ['#425050', 238]
let g:bluemint#palette.bglight   = ['#334545', 237]
let g:bluemint#palette.bg        = ['#283536', 236]
let g:bluemint#palette.bgdark    = ['#212a2b', 235]
let g:bluemint#palette.bgdarker  = ['#192121', 234]

let g:bluemint#palette.comment   = ['#005959',  23]
let g:bluemint#palette.selection = ['#445959', 239]
let g:bluemint#palette.subtle    = ['#414f4f', 238]

let g:bluemint#palette.cyan      = ['#b3fff2', 159]
let g:bluemint#palette.green     = ['#d1d1d1', 254]
let g:bluemint#palette.orange    = ['#524094',  54]
let g:bluemint#palette.pink      = ['#9cffdb',  87]
let g:bluemint#palette.purple    = ['#6eff86',  49]
let g:bluemint#palette.red       = ['#5300e3',  57]
let g:bluemint#palette.yellow    = ['#87ffb3', 122]

"
" ANSI
"
let g:bluemint#palette.color_0  = '#21222C'
let g:bluemint#palette.color_1  = '#FF5555'
let g:bluemint#palette.color_2  = '#50FA7B'
let g:bluemint#palette.color_3  = '#F1FA8C'
let g:bluemint#palette.color_4  = '#BD93F9'
let g:bluemint#palette.color_5  = '#FF79C6'
let g:bluemint#palette.color_6  = '#8BE9FD'
let g:bluemint#palette.color_7  = '#F8F8F2'
let g:bluemint#palette.color_8  = '#6272A4'
let g:bluemint#palette.color_9  = '#FF6E6E'
let g:bluemint#palette.color_10 = '#69FF94'
let g:bluemint#palette.color_11 = '#FFFFA5'
let g:bluemint#palette.color_12 = '#D6ACFF'
let g:bluemint#palette.color_13 = '#FF92DF'
let g:bluemint#palette.color_14 = '#A4FFFF'
let g:bluemint#palette.color_15 = '#FFFFFF'

" }}}



func! bluemint#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'bluemint'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction
