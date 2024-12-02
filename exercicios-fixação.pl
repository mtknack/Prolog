
pai( alfredo, suse ).
pai( alfredo, joana ).
pai( jose, alfredo ).
casado( alfredo, ingred ).
mae(Mae, Filho) :- pai(Pai, Filho), casado(Pai, Mae).
irmao(Filho1, Filho2) :- pai(Pai, Filho1), pai(Pai, Filho2).

% irmao feito pelo professor
naoMembro(_, []) :- !.
naoMembro(Elem, [A|B]) :- Elem \= A, naoMembro(Elem, B).

irmao(Pai, ListaAux, Irmaos) :- pai(Pai, I), naoMembro(I, ListaAux), irmao(Pai, [I|ListaAux], Irmaos).
% falta terminar

% 6
membro([Elem|_], Elem).
membro([_|L2], Elem) :- membro(L2, Elem).

% 7
itemDaLista([Elem|_], Elem, N) :- N is 0.
itemDaLista([_|L2], Elem, N) :- itemDaLista(L2, Elem, NAux), N is NAux + 1.

% 8
contarElemDaLista([Elem|_], Elem, 0).
contarElemDaLista([_|R], Elem, Qtd) :- contarElemDaLista(R, Elem, QtdAux), Qtd is QtdAux + 1.

% 9
consecutivosNaLista([Elem,Elem|Resto], Elem).
consecutivosNaLista([_|Resto], Elem) :- consecutivosNaLista(Resto, Elem).

% 10
elemRepetido([Elem|Resto]) :- membro(Resto, Elem).
elemRepetido([_|Resto]) :- elemRepetido(Resto).

% 11
contarTamLista([], 0).
contarTamLista([_|Resto], Tam) :- contarTamLista(Resto, TamAux), Tam is TamAux + 1.

%12
removerItemDaLista([Item|_], Item, NovaLista).