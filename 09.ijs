input=: 0 2 4{"1 ' '&cut;._2 freads'9.txt'
cities=:~. , }:"1 input
dists=: > ".each  {:"1 input
edges=: /:~"1 }:"1 input
getdist=: (dists {~ edges&i.)@/:~
getpathdist=: +/@:(2&(getdist\))
smoutput <./ S=.getpathdist"1 (i.@!@# A. ] )cities
smoutput >./ S
