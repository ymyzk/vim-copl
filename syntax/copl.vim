" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax") && b:current_syntax == "copl"
  finish
endif

syn keyword coplBoolean true false
syn keyword coplConditional if then else
syn keyword coplKeyword by def fun let rec in match with
syn keyword coplOperator plus minus times is evalto less than matches when

syn match coplKeyword "->"
syn match coplNumber "\<\d\+\>"
syn match coplComment "//.*$"
syn match coplPlaceholder "?"
syn match coplOperator "\-\-\->"
syn match coplOperator "\-d\->"
syn match coplOperator "\-\*\->"
syn match coplOperator "==>"
syn match coplOperator "|-"
syn match coplOperator "::"
syn match coplOperator "doesn't match"
syn match coplRuleName "\([A-Z][a-z]*\)\+\-\([A-Z][a-z0-9]*\)\+"
syn match coplVariable "$[A-Za-z]\+[0-9'_]*"
syn match coplVariable "#[1-9][0-9]*"

syn region coplComment start="(\*" end="\*)"

hi def link coplBoolean Boolean
hi def link coplComment Comment
hi def link coplConditional Conditional
hi def link coplKeyword Keyword
hi def link coplNumber Number
hi def link coplOperator Operator
hi def link coplPlaceholder Todo
hi def link coplRuleName Special
hi def link coplVariable Identifier

let b:current_syntax = "copl"
