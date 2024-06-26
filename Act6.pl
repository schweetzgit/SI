hombre(aldo).
hombre(theobaldo).
hombre(federico).
hombre(agustin).

mujer(sara).
mujer(virginia).
mujer(mara).
mujer(sonia).

espareja(X,Y):-(hombre(X), hombre(Y), X \= Y); 
	       (mujer(X), mujer(Y), X \= Y); 
	       (mujer(X), hombre(Y)).