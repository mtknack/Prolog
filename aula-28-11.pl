% Pessoas:
pessoa(andre, 16).
pessoa(bruno, 11).
pessoa(caio, 19).
pessoa(caio, 16).
pessoa(catterina, 17).
pessoa(diogo, 10).
pessoa(erik, 11).
pessoa(felipe, 17).
pessoa(filipe, 14).
pessoa(gabriel, 15).
pessoa(gustavo, 16).
pessoa(kaio, 11).
pessoa(marcelo, 13).
pessoa(matheus, 12).
pessoa(pedro, 13).
pessoa(ruan, 16).
pessoa(talles, 14).
pessoa(tiago, 14).
pessoa(vinicius, 15).

pessoa(P) :- pessoa(P, _).

% LISTA O NOME DE TODAS AS PESSOAS
listaPessoas(L) :-
    listaPessoas([], L), !.

listaPessoas(Aux, L) :-
    pessoa(N), naoMembro(N, Aux),
    listaPessoas([N|Aux], L).
listaPessoas(Aux, L) :- L = Aux.

% LISTA O NOME E A IDADE DE TODAS AS PESSOAS
listaPessoas2(L) :- listaPessoas2([], L).
listaPessoas2(Aux, L) :-
    pessoa(P, N),
    Item = [P,N],
    naoMembro(Item, Aux),
    listaPessoas2([Item|Aux], L).
listaPessoas2(Aux, L) :- L = Aux.

% VERIFICA SE ALGUM ITEM JÁ EXISTE EM UMA OUTRA LISTA
naoMembro(_, []) :- !.
naoMembro(E, [E|_]) :- !, fail.
naoMembro(E, [_|Resto]) :-
    naoMembro(E, Resto).


% ENCONTRAR O MENOR ITEM DA LISTA
num(2).
num(1).
num(3).

menor(Menor) :- menor([], 999999, Menor).
menor(ListaAux, MenorAux, Menor) :- num(N), naoMembro(N, ListaAux), N < MenorAux, menor([N|ListaAux], N, Menor).
menor(ListaAux, MenorAux, Menor) :- num(N), naoMembro(N, ListaAux), N >= MenorAux, menor([N|ListaAux], MenorAux, Menor).
menor(_,MenorAux, Menor) :- Menor = MenorAux.

% encontrar a pessoa com a menor idade
menorPessoa(ListaAux, MenorAux, Menor) :-
    pessoa(Nome, Numero),
    naoMembro(Numero, ListaAux),
    MenorAux = [P_Aux, N_Aux],
    Numero < N_Aux,
    menorPessoa([N_Aux|ListaAux], [Nome, Numero], Menor).
menorPessoa(ListaAux, MenorAux, Menor) :-
    pessoa(Nome, Numero),
    naoMembro(Numero, ListaAux),
    MenorAux = [P_Aux, N_Aux],
    Numero >= N_Aux,
    menorPessoa([Numero|ListaAux], MenorAux, Menor).
menorPessoa(_, MenorAux, Menor) :- Menor = MenorAux.