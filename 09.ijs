input=: 0 2 4{"1 ' '&cut;._2 freads'9.txt'
cities=:~. , }:"1 input
dists=: > ".each  {:"1 input
edges=: /:~"1 }:"1 input
getdist=: (dists {~ edges&i.)@/:~
getpathdist=: +/@:(2&(getdist\))
smoutput <./ S=.getpathdist"1 (i.@!@# A. ] )cities
smoutput >./ S

NB. === Henry Rich ====
NB. Read in data, convert to array
NB.m =: (+ |:) 0 ,~ 0 ,. |."1 |.@:((0&".)@>)/./ |: (0 _1&{)@;:;._2 freads'9.txt'
m =: (+ |:) 0 ,~ 0 ,. |."1 |.@:((0&".)@>)/./ |: (0 _1&{)@;:;._2 freads'9.txt'
NB. Find shortest path
smoutput <./ (i.@! ([: +/ m (<"1@[ { ])~ 2 ]\ A.)"0 _ i.) #m
NB. Part 2, find longest path
smoutput >./ (i.@! ([: +/ m (<"1@[ { ])~ 2 ]\ A.)"0 _ i.) #m
