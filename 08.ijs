load'regex'
S=: freads'8.txt'
NB. part 1
pat=:('\\\\|\\x..|\\"';'*')&rxrplc
smoutput ([ -&$&; 2&}.@:pat each) cutLF S
NB. part 2 - wrong answer
pat=:('[\\"]';'QQ')&rxrplc
NB. there's a bug in the regex -- ^Q is matching more than one Q
NB. will be fixed in next base release (805?)
pat2=:('^Q|Q$';'QQ')&rxrplc  
NB.smoutput (pat2@:pat ; pat)each 2 {. cutLF S
smoutput ((pat2@:pat)each  -&$&; ]) cutLF S
