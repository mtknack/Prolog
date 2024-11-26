
pai( alfredo, suse ).
pai( alfredo, joana ).
pai( jose, alfredo ).
casado( alfredo, ingred ).
mae(Mae, Filho) :- pai(Pai, Filho), casado(Pai, Mae).
irmao(Filho1, Filho2) :- pai(Pai, Filho1) = pai(Pai, Filho2).

