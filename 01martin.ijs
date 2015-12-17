LAA>   S=: ')()))))))('
LAA>   f=: 13 :'(+/''(''=y)-+/'')''=y'
LAA>   f S
LAA>_6

This is coming near the solution I like best:

	   +/ ('('&= - =&')')  S
	_6

Why do like this?

(a) It is robust against any additional dirt characters, say, linebreaks
    in S.  (Unlike the ').('&i. -based solutions.)

(b) It clearly states what makes Santa go up and down.

(c) It's so close to Roger's "Amuse-Bouche 0 of i. 16", namely
    (x>0) - (x<0)

(d) It gives rise to further variations of the initial idea both
    in the inside:

	+/  -/ '()' =/  S,'still robust against noise'

    and the outside (for Part B):

	>: _1 i.~  +/\ ('('&= - =&')')  S

