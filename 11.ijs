pass=:'hxbxwxba'
alpha=: a.{~ 97+i.26
inc=: >:&.(26&#.)&.(alpha&i.)  NB. or >:&.(26 26 26 26 26 26 26&#.)&.(alpha&i.)
nobadlett=: -.@:(+./)@:('iol'&e.) 
strt=: +./@:(3 (0 1 2 -: ([ - {.)@:(alpha&i.))\ ]) 
pairs=:1&<@:#@:~.@:((#~ ,&0) (2 -:/\ ]))
good=: pairs *. strt *. nobadlett
smoutput ans1=:inc^:(-.@:good)^:_ pass
smoutput inc^:(-.@:good)^:_ inc ans1
