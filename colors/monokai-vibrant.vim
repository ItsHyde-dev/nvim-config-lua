
" If you are distributing this theme, please replace this comment
" with the appropriate license attributing the original VS Code
" theme author.


" Monokai Vibrant - A nice dark theme

" ==========> Reset
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = 'monokai-vibrant'

" ==========> Highlight function
function! s:h(face, guibg, guifg, ctermbg, ctermfg, gui)
  let l:cmd="highlight " . a:face
  
  if a:guibg != ""
    let l:cmd = l:cmd . " guibg=" . a:guibg
  endif

  if a:guifg != ""
    let l:cmd = l:cmd . " guifg=" . a:guifg
  endif

  if a:ctermbg != ""
    let l:cmd = l:cmd . " ctermbg=" . a:ctermbg
  endif

  if a:ctermfg != ""
    let l:cmd = l:cmd . " ctermfg=" . a:ctermfg
  endif

  if a:gui != ""
    let l:cmd = l:cmd . " gui=" . a:gui
  endif

  exec l:cmd
endfun


" ==========> Colors dictionary

" GUI colors dictionary (hex)
let s:hex = {}
" Terminal colors dictionary (256)
let s:bit = {}

let s:hex.color0="#16171D"
let s:hex.color1="#f8f8f0"
let s:hex.color2="#3E4451"
let s:hex.color3="#202127"
let s:hex.color4="#48494f"
let s:hex.color5="#2a2b31"
let s:hex.color6="#5c5d63"
let s:hex.color7="#2f3037"
let s:hex.color8="#ffffff"
let s:hex.color9="#484950"
let s:hex.color10="#616268"
let s:hex.color11="#6de500"
let s:hex.color12="#34353b"
let s:hex.color13="#fffffa"
let s:hex.color14="#393a40"
let s:hex.color15="#5c6370"
let s:hex.color16="#E373CE"
let s:hex.color17="#81F900"
let s:hex.color18="#FF3F4F"
let s:hex.color19="#FFD945"

let s:bit.color6="59"
let s:bit.color9="76"
let s:bit.color12="118"
let s:bit.color11="170"
let s:bit.color13="203"
let s:bit.color14="221"
let s:bit.color7="231"
let s:bit.color0="234"
let s:bit.color3="235"
let s:bit.color5="236"
let s:bit.color10="237"
let s:bit.color2="238"
let s:bit.color4="239"
let s:bit.color8="241"
let s:bit.color1="255"


" ==========> General highlights 
call s:h("Normal", s:hex.color0, s:hex.color1, s:bit.color0, s:bit.color1, "none")
call s:h("Cursor", s:hex.color1, "", s:bit.color1, "", "none")
call s:h("Visual", s:hex.color2, "", s:bit.color2, "", "none")
call s:h("ColorColumn", s:hex.color3, "", s:bit.color3, "", "none")
call s:h("LineNr", "", s:hex.color4, "", s:bit.color4, "none")
call s:h("CursorLine", s:hex.color5, "", s:bit.color5, "", "none")
call s:h("CursorLineNr", "", s:hex.color6, "", s:bit.color6, "none")
call s:h("CursorColumn", s:hex.color5, "", s:bit.color5, "", "none")
call s:h("StatusLineNC", s:hex.color7, s:hex.color8, s:bit.color5, s:bit.color7, "none")
call s:h("StatusLine", s:hex.color9, s:hex.color8, s:bit.color4, s:bit.color7, "none")
call s:h("VertSplit", "", s:hex.color10, "", s:bit.color8, "none")
call s:h("Folded", s:hex.color5, s:hex.color11, s:bit.color5, s:bit.color9, "none")
call s:h("Pmenu", s:hex.color12, s:hex.color8, s:bit.color10, s:bit.color7, "none")
call s:h("PmenuSel", s:hex.color3, s:hex.color13, s:bit.color3, s:bit.color7, "none")
call s:h("EndOfBuffer", s:hex.color0, s:hex.color14, s:bit.color0, s:bit.color10, "none")
call s:h("NonText", s:hex.color0, s:hex.color14, s:bit.color0, s:bit.color10, "none")


" ==========> Syntax highlights
call s:h("Comment", "", s:hex.color15, "", s:bit.color8, "none")
call s:h("Constant", "", s:hex.color16, "", s:bit.color11, "none")
call s:h("Special", "", s:hex.color16, "", s:bit.color11, "none")
call s:h("Function", "", s:hex.color17, "", s:bit.color12, "none")
call s:h("Statement", "", s:hex.color18, "", s:bit.color13, "none")
call s:h("Operator", "", s:hex.color18, "", s:bit.color13, "none")
call s:h("PreProc", "", s:hex.color18, "", s:bit.color13, "none")
call s:h("Type", "", s:hex.color18, "", s:bit.color13, "none")
call s:h("String", "", s:hex.color19, "", s:bit.color14, "none")
call s:h("Number", "", s:hex.color16, "", s:bit.color11, "none")

highlight link cStatement Statement
highlight link cSpecial Special


" Generated using https://github.com/nice/themeforge
" Feel free to remove the above URL and this line.
