" Vim syntax file
" Language: DIY
" Maintainer: rpbranco

if exists("b:current_syntax")
  finish
endif

syn keyword diyType void integer string number const  
syn keyword diyStatement break continue public
syn keyword diyConditional if then else upto downto 
syn keyword diyRepeat while do for in step

" Character escape and special characters
syn match diySpecial "\v\\."

syn match diyOperator "\v[-+*/%<>=:!|&~]" 

syn region diyBlock start="{" end="};" fold transparent

syn match diyComment "==.*$"
syn region diyBlockComment start="=<" end="=>" contains=diyBlockComment

syn region diyString start='"' skip='\\\"' end='"' contains=diySpecial

let b:current_syntax = "diy"

hi def link diyComment Comment
hi def link diyStatement Statement
hi def link diyType Type
hi def link diyString String
hi def link diyConditional Conditional
hi def link diyRepeat Repeat
hi def link diyBlockComment Comment 
hi def link diyOperator Operator
hi def link diySpecial Special
