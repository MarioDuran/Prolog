%backtracking
color(rojo).
color(azul).
color(verde).

% [H|T] = [a, b, c].
% member(b, [a, b, c]).
% member(X, [a, b, c]).

%length([a, b, c], N).
%append([1,2], [3,4], R).

pertenece(X, [X|_]).
pertenece(X, [_|T]) :-
    pertenece(X, T).
%pertenece(b, [a, b, c]).

suma([], 0).
suma([H|T], S) :-
    suma(T, ST),
    S is H + ST.
%suma([1, 2, 3, 4], S).

contar([], 0).
contar([_|T], N) :-
    contar(T, M),
    N is M + 1.
%contar([a, b, c], N).

invertir([], []).
invertir([H|T], R) :-
    invertir(T, RT),
    append(RT, [H], R).

%invertir([1,2,3], R).

positivos([], []).
positivos([H|T], [H|R]) :-
    H > 0,
    positivos(T, R).

positivos([H|T], R) :-
    H =< 0,
    positivos(T, R).


% Ejercicio 1: Máximo de una lista

maximo([X], X).

maximo([X|Resto], M) :-
    maximo(Resto, M1),
    X > M1,
    M = X.

maximo([X|Resto], M) :-
    maximo(Resto, M1),
    X =< M1,
    M = M1.

% Ejercicio 2: Contar apariciones de un elemento

contar_elemento(_, [], 0).

contar_elemento(X, [X|Resto], N) :-
    contar_elemento(X, Resto, N1),
    N is N1 + 1.

contar_elemento(X, [Y|Resto], N) :-
    X \= Y,
    contar_elemento(X, Resto, N).

% Ejercicio 3: Eliminar apariciones de un elemento

eliminar(_, [], []).

eliminar(X, [X|Resto], Resultado) :-
    eliminar(X, Resto, Resultado).

eliminar(X, [Y|Resto], [Y|Resultado]) :-
    X \= Y,
    eliminar(X, Resto, Resultado).
