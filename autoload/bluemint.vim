" bluemint palette"
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


" bluemint palette"
" Palette: {{{

let g:ragered#palette           = {}
let g:ragered#palette.fg        = [ "#544c4a", 230 ]

let g:ragered#palette.bglighter = [ "#3f3231", 239 ]
let g:ragered#palette.bglight   = [ "#271c1c", 237 ]
let g:ragered#palette.bg        = [ "#160e0e", 236 ]
let g:ragered#palette.bgdark    = [ "#170303", 235 ]
let g:ragered#palette.bgdarker  = [ "#a44141", 234 ]

let g:ragered#palette.comment   = [ "#765b5b", 124 ]
let g:ragered#palette.selection = [ "#613d3d", 138 ]
let g:ragered#palette.subtle    = [ "#ff8a8a", 95 ]

let g:ragered#palette.cyan      = [ "#ccfff5", 175 ]
let g:ragered#palette.green     = [ "#e69f3d", 195 ]
let g:ragered#palette.orange    = [ "#9e52eb", 214 ]
let g:ragered#palette.pink      = [ "#ff5d52", 135 ]
let g:ragered#palette.purple    = [ "#d10000", 204 ]
let g:ragered#palette.red       = [ "#eeff70", 196 ]
let g:ragered#palette.yellow    = [ "#d1007a", 228 ]

"
" ANSI
"
let g:ragered#palette.color_0  = '#21222C'
let g:ragered#palette.color_1  = '#FF5555'
let g:ragered#palette.color_2  = '#50FA7B'
let g:ragered#palette.color_3  = '#F1FA8C'
let g:ragered#palette.color_4  = '#BD93F9'
let g:ragered#palette.color_5  = '#FF79C6'
let g:ragered#palette.color_6  = '#8BE9FD'
let g:ragered#palette.color_7  = '#F8F8F2'
let g:ragered#palette.color_8  = '#6272A4'
let g:ragered#palette.color_9  = '#FF6E6E'
let g:ragered#palette.color_10 = '#69FF94'
let g:ragered#palette.color_11 = '#FFFFA5'
let g:ragered#palette.color_12 = '#D6ACFF'
let g:ragered#palette.color_13 = '#FF92DF'
let g:ragered#palette.color_14 = '#A4FFFF'
let g:ragered#palette.color_15 = '#FFFFFF'

" }}}

func! bluemint#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'bluemint'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    elseif g:mint_theme == 'bluemint'
        g:bluemint#palette = g:blumint#palette
    elseif g:mint_theme == 'ragered'
        g:bluemint#palette = g:ragered#palette
    endif
    return 0
endfunction
