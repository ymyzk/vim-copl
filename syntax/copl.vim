" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax") && b:current_syntax == "copl"
  finish
endif

syntax keyword coplBoolean true false
syntax keyword coplConditional if then else
syntax keyword coplKeyword by def fun let in
syntax keyword coplOperator plus minus times is evalto less than

syntax match coplKeyword "->"
syntax match coplNumber "\d\+"
syntax match coplComment "//.*$"
syntax match coplPlaceholder "?"
syntax match coplOperator "\-\-\->"
syntax match coplOperator "\-d\->"
syntax match coplOperator "\-\*\->"
syntax match coplOperator "|-"
syntax match coplRuleName "[A-Z]\+\-\([A-Z][a-z0-9]*\)\+"

syntax region coplComment start="(\*" end="\*)"

highlight def link coplBoolean Boolean
highlight def link coplComment Comment
highlight def link coplConditional Conditional
highlight def link coplKeyword Keyword
highlight def link coplNumber Number
highlight def link coplOperator Operator
highlight def link coplPlaceholder Todo
highlight def link coplRuleName Special

let b:current_syntax = "copl"
