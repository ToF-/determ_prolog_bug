:- module(cp, [f/3]).

f(a,0,42).
f(a,0,43). % this will cause a choicepoint on f(a,0,42).
f(b,4,42). 
f(b,5,4807).
% :- det(f/3). 
% :- f(a,0,42), write('*****'), nl, halt.






