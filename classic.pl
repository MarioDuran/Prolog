% hechos

humano(socrates).
humano(platon).
humano(aristoteles).

filosofo(socrates).
filosofo(platon).
filosofo(aristoteles).

mortal(aquiles).

maestro_de(socrates, platon).
maestro_de(platon, aristoteles).

ateniense(socrates).
griego(platon).
griego(aristoteles).

% reglas

mortal(X) :- humano(X).

discipulo_de(X, Y) :- maestro_de(Y, X).

influenciado_por(X, Y) :- maestro_de(Y, X).

filosofo_mortal(X) :-
    filosofo(X),
    mortal(X).
