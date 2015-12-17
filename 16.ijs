load'regex'
Defaults=:', ', ': _',~ ': _, 'joinstring <;._2 [ 0 : 0
children
cats
perfumes
samoyeds
pomeranians
akitas
vizslas
goldfish
trees
cars
)

NB. part 1
parse=: deb L:0@:(':'&cut each)@:(','&cut)
Input0=: ('^Sue \d+: ';'') rxrplc fread'16.txt'
Input=: deb L:0 parse@:(Defaults,~]);._2 Input0
Ticker=: /:~ parse s=:'children:3, cats:7, samoyeds:2, pomeranians:3, akitas:0, vizslas:0, goldfish:5, trees:3, cars:2, perfumes:1'
BoxMatrix=: /:~@({.each {./. ])"1 Input
Matrix=:".every {: every BoxMatrix
TickerVec=: ". every {: every Ticker
smoutput >: (i.>./) Matrix (+/ .=) TickerVec

NB. part 2
NB. dapply from http://code.jsoftware.com/wiki/Essays/Distributed_Apply#Dyadic_Case
dapply=: 1 : 0 
  (i.#y) u@]@.["0 _1 y
:
  r=. ,:x m@.0&{. y
  for_i. i.&.<:#y do. r=. r,(i{x) m@.i i{y end.
)
ad=: 1 : 'u *. -.@(_ = [)'
smoutput >: (i.>./) Matrix +/@:(=`=`(>ad)`=`(<ad)`=`(<ad)`=`(>ad)`= dapply)"1  TickerVec
