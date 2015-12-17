InputTest=: 0 : 0
Alice would gain 54 happiness units by sitting next to Bob.
Alice would lose 79 happiness units by sitting next to Carol.
Alice would lose 2 happiness units by sitting next to David.
Bob would gain 83 happiness units by sitting next to Alice.
Bob would lose 7 happiness units by sitting next to Carol.
Bob would lose 63 happiness units by sitting next to David.
Carol would lose 62 happiness units by sitting next to Alice.
Carol would gain 60 happiness units by sitting next to Bob.
Carol would gain 55 happiness units by sitting next to David.
David would gain 46 happiness units by sitting next to Alice.
David would lose 7 happiness units by sitting next to Bob.
David would gain 41 happiness units by sitting next to Carol.
)

NB. part 1
Edges=: (0 9 2 { ;:@:}:);._2 'gain' delstring ('lose ';'_') rplc~ Input
ppl=: ~. {."1 Edges
EdgesD=: /:~ Edges, |: ppl,ppl,:<'0'  NB. add diagonal elements
Tbl=: (".@>)/./ 0 2 { |: EdgesD  NB. happiness relationaship table
happPair=: +&({&Tbl)&< |.  NB. happPair 2 3
happ=: +/@:(2 happPair\ (, {.))  NB. happ i.8
smoutput happMax=: >./ happ"1 (i.@! A. i.) # Tbl

NB. part 2
Tbl=: (".@>)/./ 0 2 { |: EdgesD
Tbl=: Tbl {.~ >: $ Tbl
happPair=: +&({&Tbl)&< |.
happ=: +/@:(2 happPair\ (, {.))
smoutput happMax=: >./ happ"1 (i.@! A. i.) # Tbl
