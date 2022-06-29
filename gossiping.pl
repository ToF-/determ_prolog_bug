:- module(gossiping, [stopOn/3]).

stop(alice, 0, 3).
stop(alice, 1, 1).
stop(alice, 2, 2).
stop(alice, 3, 3).
% uncommenting these lines provokes a 'deterministic procedure succeeded with a choicepoint' exception
% stop(desmond, 0, 2).
% stop(desmond, 1, 5).
% stop(desmond, 2, 2).
% stop(desmond, 3, 4).

:- det(stopOn/3).

stopOn(Driver, Minute, Result) :-
    Time is Minute mod 4,
    stop(Driver, Time, Result).

