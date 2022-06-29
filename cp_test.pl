/* swipl -g run_tests -t halt cp_test.pl */

:- begin_tests(cp).
:- use_module(cp).

test('f is deterministic') :-
    f(a, 0, 42).
/* test('fa is deterministic') :- fa(a, 0, 42). */

:- end_tests(cp).
