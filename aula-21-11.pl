% comentarios

% achar um membro da lista
membro(E, [E|_]).
membro(E, [_|R]) :- membro(E,R).

% melhorando utilizandoa poda
membro(E, [E|_]) :- !.
membro(E, [_|R]) :- membro(E,R).

% qual é a posição do elemento na lista
posItem(E, [E|_], P) :- P is 0.
posItem(E, [_|R], P) :- posItem(E,R, PAux), P is PAux + 1.

% contar quantos elementos tem numa lista
count([], 0).
count([_|R], C) :- count(R, CAux), C is CAux + 1.

% somar os elementos da lista
countSum([], 0).
countSum([A|R], C) :- countSum(R, CAux), C is CAux + A.