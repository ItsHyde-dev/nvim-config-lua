" Colorscheme generated by https://github.com/arcticlimer/djanho
highlight clear

function s:highlight(group, bg, fg, style)
  let gui = a:style == '' ? '' : 'gui=' . a:style
  let fg = a:fg == '' ? '' : 'guifg=' . a:fg
  let bg = a:bg == '' ? '' : 'guibg=' . a:bg
  exec 'hi ' . a:group . ' ' . bg . ' ' . fg  . ' ' . gui
endfunction

let s:Color5 = '#81F900'
let s:Color2 = '#E373CE'
let s:Color15 = '#21252B'
let s:Color1 = '#FFD945'
let s:Color7 = '#fff'
let s:Color14 = '#495162'
let s:Color11 = '#2c313a'
let s:Color12 = '#112c36'
let s:Color0 = '#5c6370'
let s:Color4 = '#00a0e4'
let s:Color13 = '#3E4451'
let s:Color9 = '#f8f8f0'
let s:Color8 = '#1b1c23'
let s:Color6 = '#F8F8F0'
let s:Color10 = '#16171D'
let s:Color3 = '#FF3F4F'

call s:highlight('Comment', '', s:Color0, 'italic')
call s:highlight('String', '', s:Color1, '')
call s:highlight('Number', '', s:Color2, '')
call s:highlight('TSCharacter', '', s:Color2, '')
call s:highlight('Keyword', '', s:Color3, '')
call s:highlight('Operator', '', s:Color3, '')
call s:highlight('Type', '', s:Color3, 'italic')
call s:highlight('Type', '', s:Color4, '')
call s:highlight('Function', '', s:Color5, '')
call s:highlight('Error', '', s:Color6, '')
call s:highlight('StatusLine', s:Color7, s:Color8, '')
call s:highlight('WildMenu', s:Color10, s:Color9, '')
call s:highlight('Pmenu', s:Color10, s:Color9, '')
call s:highlight('PmenuSel', s:Color9, s:Color11, '')
call s:highlight('PmenuThumb', s:Color10, s:Color9, '')
call s:highlight('DiffAdd', s:Color12, '', '')
call s:highlight('Normal', s:Color10, s:Color9, '')
call s:highlight('Visual', s:Color13, '', '')
call s:highlight('CursorLine', s:Color13, '', '')
call s:highlight('ColorColumn', s:Color13, '', '')
call s:highlight('SignColumn', s:Color10, '', '')
call s:highlight('LineNr', '', s:Color14, '')
call s:highlight('TabLine', s:Color15, '', '')
call s:highlight('TabLineSel', '', s:Color11, '')
call s:highlight('TabLineFill', s:Color15, '', '')
call s:highlight('TSPunctDelimiter', '', s:Color9, '')

highlight! link TSConditional Conditional
highlight! link TSKeyword Keyword
highlight! link TSFuncMacro Macro
highlight! link TSConstBuiltin TSVariableBuiltin
highlight! link TSLabel Type
highlight! link TSComment Comment
highlight! link TSField Constant
highlight! link Conditional Operator
highlight! link Repeat Conditional
highlight! link TSProperty TSField
highlight! link TSParameterReference TSParameter
highlight! link TSTagDelimiter Type
highlight! link TSPunctBracket MyTag
highlight! link TSString String
highlight! link TSPunctSpecial TSPunctDelimiter
highlight! link TSRepeat Repeat
highlight! link TSFloat Number
highlight! link NonText Comment
highlight! link TSConstant Constant
highlight! link Folded Comment
highlight! link Whitespace Comment
highlight! link TSNumber Number
highlight! link TelescopeNormal Normal
highlight! link Operator Keyword
highlight! link TSOperator Operator
highlight! link TSNamespace TSType
highlight! link TSFunction Function
highlight! link Macro Function
highlight! link CursorLineNr Identifier
highlight! link TSType Type
highlight! link TSTag MyTag
highlight! link TSParameter Constant