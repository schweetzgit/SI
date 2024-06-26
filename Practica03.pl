poblacion(china,1300).
poblacion(eeuu,316).
poblacion(mexico,120).
poblacion(brasil,192).
area(china,9).
area(brasil,8).
area(mexico,2).
area(eeuu,9).
densidad(X,Y) :- poblacion(X,P), area(X,A), Y is P//A.

