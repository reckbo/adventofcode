NB. Read in data, keeping names & happiness
nms =: ~. {."1 nngv =: (0 _1 2 3&{)@;:;._2 '.' -.~ freads'13.txt'

NB. Extract happiness
vals =: (-@]^:('l'={.@[) 0&".)&>/"1 (_2) {."1 nngv

NB. Create array of affinities
i =: (+ |:) vals (<"1 nms i. 2 {."1 nngv)} (2##nms) $ 0

NB. Find greatest happiness
maxhap =: >./ (i.@! ([: +/ i (<"1@[ { ])~ [: (,. 1&|.) A.)"0 _ i.) #i


NB. Part 2. Adding a dummy is equivalent to not closing the ring
maxhap2 =: >./ (i.@! ([: +/ i (<"1@[ { ])~ 2 ]\ A.)"0 _ i.) #i


