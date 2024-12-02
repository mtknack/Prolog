conexao(a, b).
conexao(a, d).
conexao(a, f).
conexao(a, m).
conexao(b, c).
conexao(b, e).
conexao(b, v).
conexao(d, i).
conexao(d, j).
conexao(f, g).
conexao(f, h).
conexao(m, n).
conexao(m, o).
conexao(i, y).
conexao(j, k).
conexao(j, l).
conexao(n, q).
conexao(n, p).
conexao(l, z).
conexao(k, t).
conexao(k, u).
conexao(q, r).
conexao(q, s).
conexao(r, w).
conexao(s, x).

naoMembro(_, []) :- !.
naoMembro(Elem, [A|B]) :- Elem \= A, naoMembro(Elem, B).

buscaProdundidade(Inicio, Inicio, Lista, ListaInvertida) :- inverteLista(Lista, [], ListaInvertida).
buscaProdundidade(Inicio, Fim, Lista, Caminho) :- conexao(Inicio, X), naoMembro(X, Lista), buscaProdundidade(X, Fim, [X|Lista], Caminho).

inverteLista([], Lista, Lista).
inverteLista([A|Resto], ListaAux, ListaInvertida) :-
    inverteLista(Resto, [A|ListaAux], ListaInvertida).