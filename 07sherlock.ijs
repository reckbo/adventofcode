NB.I used an algorithm used to sort pedigrees to get the instructions in order
NB.and then used the method Henry introduced earlier to get the value of a.
NB.Part 2 took me a bit longer because I misunderstood the question and
NB.thought that I had to iterate until the value of a stabilized (not just run
NB.it once more!)

RSHIFT=: (2^16) | ((34 b.)~ -@])
LSHIFT=: (2^16) | (34 b.)~
AND=: (2^16) | 17 b.
OR=: (2^16) | 23 b.
NOT=: (2^16) | 26 b.
NB. need to sort instructions to make sure dependent lines are after starting ones
getIds=: [: ({: , }:)@;:;._2 ('ANDLRSHIFT->O1234567890') -.~ ]
isParent=: {."1 e. [: (a: -.~ ~.)@, }."1
getGen=: +/@(e."2 (#~ isParent)^:a:)@getIds
sortPed=: \: getGen
getCmds=: <@([: '=. '&joinstring [: |. ' -> '&splitstring);._2

input=: freads '~temp/advent7_input.txt'
runCircuit=: 3 : ((getCmds sortPed ]) input)
echo runCircuit ''

NB. Part 2
runCircuit2=: 3 : (('a=. y';'b=. a') ,}. ((getCmds sortPed ]) input))
echo runCircuit2^:2 ] 19138
