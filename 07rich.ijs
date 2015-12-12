NB. Advent 7
LC =: 'abcdefghijklmnopqrstuvwxyz'
'`NOT OR AND LSHIFT RSHIFT' =: (65535&-)`(23 b.)`(17 b.)`(65535 (17 b.) (33 b.)~)`(33 b.~ -)
NB. Read input, convert to words.  There seems to be an extra LF
NB. Extract signal-names
Nm =: (#~ e.&LC@{.@>)&.> I =: a: -.~ <@;:;._2 freads'7.txt'
NB. topo sort names.  Move defined names to front, recur
Toponm =: ( (;@#~ ([ , $:@(-.L:1~)^:(*.&*&#)) (#~ -.) ) 1&>:@#@>) Nm
NB. Sort lines by result-name, convert, execute
([: ".@(;:^:_1) {: , '=:' ; _3&}.)@> I /: Toponm i. {:@> I
NB. Result?
a
