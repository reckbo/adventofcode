Data=: 0,.~ ".every (8 16 3{ ;:);._2 freads'14.txt'
NB.Seconds=:<@:#&>/"1 (0 1&{ ,&< 2 3&{)"1 > ".each Input ,. <'0'
Seconds=: <@(,`#`,/)"1 Data
dist=: (< +/@:$&> Seconds"_)
smoutput >./dist 2503
