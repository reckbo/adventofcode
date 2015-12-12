i =. a: -.~ <;._2 freads'08.txt'
NB. Count number of excess characters for each line: one per unescaped \, + 2 more if \x,
NB. + 2 for enclosing "
smoutput +/ ('\x'&E. (2 + (2 * +/@:*.) + +/@]) >/\.&.|.@('\'&=))@> i
NB. Count number of characters needed to encode: one per " or \, plus 2 for encllseing "
smoutput +/ (2 + +/@(e.&'"\'))@> i
