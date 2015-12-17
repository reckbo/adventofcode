NB.Mine - decided to play with regex

require 'regex'
input =: fread'day14.txt'

exp =: '^([A-Za-z]+) can fly (\d+) km\/s for (\d+) seconds, but then
must rest for (\d+) seconds'

selectOther=: (#~ (0,1) $~ $)
parse=: (selectOther@(rxcut~ }.@{.@(exp&rxmatches)) each @ cutLF)

NB. helper to access boxes with property names
makeStruct=: 3 : 0
    for_c. y do.
      ('get',(>c)) =: c_index {:: ]
      ('set',(>c)) =: <@:[ (c_index) } ]
    end.
    (#y) $ (<'')
)
makeStruct 'Name';'Speed';'Duration';'Rest'
time=: ([ ([$]) (".@getDuration$(".@getSpeed)),(0 $~ ".@getRest))
smoutput pt1=:>./ +/"1  (2503&(time every) parse input)
smoutput pt2=:>./ ((+/"1)@([: (>./ ="1 ])  +/\"1)) (2503&time every parse input)
