" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax") && b:current_syntax == "copl"
  finish
endif

syntax keyword coplKeywords by
syntax keyword coplOperators plus times is evalto less than

syntax match coplComment "//.*$"
syntax region coplComment start="(\*" end="\*)"
syntax match coplPlaceholder "?"
syntax match coplRuleName "[A-Z]\-[A-Z][a-z]*\([A-Z][a-z]*\)*"

highlight def link coplKeywords Keyword
highlight def link coplOperators Operator

highlight def link coplComment Comment
highlight def link coplPlaceholder Todo
highlight def link coplRuleName Special

let b:current_syntax = "copl"
