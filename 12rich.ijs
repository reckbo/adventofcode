NB.Spurning convert/json.  A nonrecursive solution:

NB. advent 12
NB. part 1
i =: <@;:;._2 iraw =: freads'12.txt'
+/ (0&".@;;.2~ ~:&(<,'-')) (#~ '-0123456789' e.~ {.@>) ;i


NB. part 2
NB. Assign nesting level to each character; make level of } match {
nlevel =: (+/\ + _1&=) class =: 1 _1 0 {~ '{}' i. iraw

NB. Get locations of points of interest: {} or :"red"
points =: nlevel ,.&(((':"red"'&E. +. e.&'{}') iraw)&#) i. # nlevel

NB. Sort to match starting and ending {}; examine each {} block,
NB. and keep the start/end+1 if it contains :"red"
redblocks =: _2 ]\ ; (<@((0&#)`(0 1 + 0 _1&{)@.(2<#));.1~   '{' = {&iraw) {:"1 /:~ points

NB. Put red strings in sequence; discard red strings that are included in other red strings
culledred =: (#~   {."1 >: |.!.0@:(>./\)@:({:"1)) /:~ redblocks

NB. Discard the red strings from the input
culledi =: (_2 ,.@:(-~/\)\ 0 , (,culledred) , #iraw) ;@:(<;.0) iraw

NB. Calculate the requested result on the culled input
smoutput +/ (0&".@;;.2~ ~:&(<,'-')) (#~ '-0123456789' e.~ {.@>) ;: culledi
