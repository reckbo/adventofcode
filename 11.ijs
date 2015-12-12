pass=:'hxbxwxba'
alpha=: a.{~ 97+i.26
inc=: >:&.(26&#.)&.(alpha&i.)
nobad=: -.@:(+./)@:('iol'&e.) 
strt=: +./@:(3 (0 1 2 -: ([ - {.)@:(alpha&i.))\ ]) 
pairs=:1&<@:#@:~.@:((#~ ,&0) (2 -:/\ ]))
good=: pairs *. strt *. nobad
smoutput ans1=:inc^:(-.@:good)^:_ pass
smoutput inc^:(-.@:good)^:_ inc ans1
