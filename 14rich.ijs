NB. Read in data, convert to numeric
sfr =: 0&".@> (3 8 16&{)@;:;._2 fread'14.txt'

NB. Calculate distances
>./ (0&{ * (_,1&{) ([ #. <.) 2503 #:~ (0,+/@(1 2&{)))"1 sfr


NB. Part 2. Total rewrite required
>./ +/"1 (="1 >./) +/\"1 (2503 $ *`(1 0 #~ ,)/)"1 sfr
