
" Palette: {{{

let g:bluemint#palette           = {}
let g:bluemint#palette.fg        = ['#F8F8F2', 253]

let g:bluemint#palette.bglighter = ['#424450', 238]
let g:bluemint#palette.bglight   = ['#343746', 237]
let g:bluemint#palette.bg        = ['#282A36', 236]
let g:bluemint#palette.bgdark    = ['#21222C', 235]
let g:bluemint#palette.bgdarker  = ['#191A21', 234]

let g:bluemint#palette.comment   = ['#6272A4',  61]
let g:bluemint#palette.selection = ['#44475A', 239]
let g:bluemint#palette.subtle    = ['#424450', 238]

let g:bluemint#palette.cyan      = ['#8BE9FD', 117]
let g:bluemint#palette.green     = ['#50FA7B',  84]
let g:bluemint#palette.orange    = ['#FFB86C', 215]
let g:bluemint#palette.pink      = ['#FF79C6', 212]
let g:bluemint#palette.purple    = ['#BD93F9', 141]
let g:bluemint#palette.red       = ['#FF5555', 203]
let g:bluemint#palette.yellow    = ['#F1FA8C', 228]

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
