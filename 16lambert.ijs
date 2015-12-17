TAPE=:<;._2 noun define
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
   
   
read=: 1!:1@boxopen

SUE=: [;._2 LF,~read'16.txt'

NB. exact matches, no need for numerical complications
match=: 1 e. (E.~ >)~

NB. first 3 characters of object don't appear
forgotten=: 1 -.@e. (E.~ (4 {. >))~

NB. partial mask for part 2
MASK=:(0 2 4 5 8 9{TAPE)(forgotten +. match)"0 1/SUE
smoutput (6=+/MASK)#SUE

NB. partial mask for part 2
MASK=:(0 2 4 5 8 9{TAPE)(forgotten +. match)"0 1/SUE
smoutput (6=+/MASK)#SUE
