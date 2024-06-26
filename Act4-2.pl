peso(ningning,54).
peso(winter,50).
peso(karina,56).
peso(giselle,53).
altura(ningning,170).
altura(winter,169).
altura(karina,174).
altura(giselle,163).

imc(X,Y) :-  peso(X,P), altura(X,A), Y is P // A*2.