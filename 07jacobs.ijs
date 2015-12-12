NB.Here goes my latest (this time correct) attempt.
NB.it parses input lines into executable J code, and checks which lines are
NB.fully determined.
NB.Those are executed, added to the valid list, and removed from the input to
NB.be executed.
NB.This continues until all input has been processed.
NB.Have fun!

D =: 'C:\Users\Jan-Pieter\Dropbox\scripts\J\adventofcode\'
i6 =: freads D,'input7.txt'
valid =: ;:'LSHIFT NOT RSHIFT AND OR'
s6a =: [: ".@('a'"_) s6proc^:(#>0)^:_@s6parse
s6parse =: (s6rear&.;:) ;. _2
s6rear =: ({~ s6use)@('=:'&;) NB. Re-arrange lines
s6use =: (<: , [: i. 3 -~ ])@# NB. which elements to use,based on number of words
NB. Do and remove valid (ie. fully determined) sentences.
s6proc =: (s6isvalid (s6dosel ] s6remsel) ]) NB. process step:
s6dosel =: (s6markvalid@:{.@;: ] ".)@# NB. Do selected
s6markvalid =: 3 : 'valid =: valid , y' NB. add to valid symbols
s6remsel=: (#~ -.)~ NB. remove selected
s6isvalid =: (# = [: +/ s6num +. s6def)@(2&}.)@;: NB. valid right hand side? :
s6num =: (*./@e.&(,":"0 i.10)&> NB. numeric litteral
s6def =: 3 : 'valid e.~"_ 0 y' NB. already defined
NB. Thanks to David Lambert:
B16 =: 16bffff
LSHIFT=: B16 AND 33 b.~
NOT=: B16 AND 0&(2b11000 b.)
RSHIFT=: LSHIFT -
AND=: 2b10001 b.
OR=: 2b10111 b.
