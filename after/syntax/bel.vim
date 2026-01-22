syntax match BelugaOperator conceal '\\conj' cchar=∧
syntax match BelugaOperator conceal '\\disj' cchar=∨
syntax match BelugaOperator conceal '\\not' cchar=¬
syntax match BelugaOperator conceal '\\imp' cchar=⊃
syntax match BelugaOperator conceal '\\Gamma' cchar=Γ

hi link BelugaOperator Operator
hi! link Conceal Operator

setlocal conceallevel=1
