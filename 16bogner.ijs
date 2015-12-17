
NB.part1 was straightforward - find key/value from the input in the
NB.ticker. If all 3 key/values from the row match the ticker, then it's a
NB.matching row
NB.part2 was a bit trickier - I added on the operator to the input (e.g.
NB.<5 for goldfish) then found the matching row in the ticker and
NB.evaluated the operand/value against the ticker value. If all 3
NB.matched, then it was a match

input =: ;: each cutLF freads '16.txt'

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

smoutput pt1=: (#~ (3 = +/@(ticker e.~ _2[\(2,3,5,6,8,9)&{)) every) input

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

evalPt2=:((3,6,9)&{ ([: ".@;"1 [ ,. {&(}."1 ticker2)@]) (0 {"1 ticker) i. (2,5,8)&{)
smoutput answerPt2=: (#~ (3 = +/@evalPt2) every) input


