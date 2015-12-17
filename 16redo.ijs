ticker=: ;: every cutLF (0 : 0)
children: 3
cats: 7
samoyeds: 2
pomeranians: 3
akitas: 0
vizslas: 0
goldfish: 5
trees: 3
cars: 2
perfumes: 1
)

Input=: (_2 ]\ 2 3 5 6 8 9 { ;:) each cutLF freads'16.txt'

NB. part 1
'`keys vals'=: ({."1)`(".@>@{:"1)
tickvals=: (vals ticker)  {~ (keys ticker) i. keys
smoutput >: (i.>./) +/@:(vals = tickvals) every Input

NB. part 2
ticker2=: ;: every cutLF (0 : 0)
children: =3
cats: >7
samoyeds: =2
pomeranians: <3
akitas: =0
vizslas: =0
goldfish: <5
trees: >3
cars: =2
perfumes: =1
)
ops=: ('/' ,~ ])each@(1&{)"1 
tickops=: (ops ticker2)  {~ (keys ticker) i. keys
smoutput >: (i.>./) +/@(>@tickops apply"_1 vals ,. tickvals) every Input
