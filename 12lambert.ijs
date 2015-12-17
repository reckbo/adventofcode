read=: 1!:1@<
require'~addons/convert/json/json.ijs'
A=:dec_json read'12.txt'


NB. intermediate step to visualize the structure
NB. (in emacs  M-x toggle-truncate-lines)
NB. python pprint.pprint(dictionary) is also a great way to view the structure
NB. sort of the transpose of the j display.

NB.boxdraw_j_ 1
NB.(,LF,.~":A)1!:2<'/tmp/z'


to_num=: (+ _&<) ::0:  NB. to_num returns y for numeric y else 0

NB. solution: +/ to_num S:0 A


rank=:#@:$
data_list_hash =: rank * *@:L.  NB. return 0 1 or 2 respectively
assert 0 0 1 2 -: data_list_hash&> 3 ; 'abc' ; (;/i.3) ; <2 1$a:

Note 'agenda for data, list, and hash.'
 data: return numeric value (or 0)    to_num
 list: sum of recursion on each item  ([: +/ $:&>)
 hash: 0 iff 'red', else treat tail as list.
 hash: My version works too hard, Boolean multiply rather than "if"
 hash:                       (((<'red')&(-.@:e.) * $:)@:{:)
)

f=:to_num`([:+/$:&>)`(((<'red')&(-.@:e.)*$:)@:{:)@.data_list_hash

NB. solution:   f A
smoutput f A



NB. another part 1 solution, yet another state table
NB. sequential machine to extract numbers, ignore structure
mp=: +/ .*

MAP =: (>:@i.@# mp a.&e.&>)(Num_j_;'-')

STATE =: +. "."1 }. ];._2 noun define
      separator  digit      -        NB. character class
[0]   0j0        2j1        1j1      NB. between numbers
[1]   0j1        2j0        1j1      NB. negative number
[2]   0j3        2j0        1j1      NB. remainder of number
)

smoutput +/".&>(0;STATE;MAP);:read'12.txt'
