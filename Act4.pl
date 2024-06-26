eshombre(homero).
eshombre(bart).
esmujer(marge).
esmujer(lisa).
esmujer(maggie).
esmujer(selma).
esmujer(paty).
eshijo(lisa,marge,homero).
eshijo(bart,marge,homero).
eshijo(maggie,marge,homero).
eshijo(marge,clancy,jaqueline).
eshijo(selma,clancy,jaqueline).
eshijo(paty,clancy,jaqueline).
eshermana(X,Y):-eshijo(Y,M,H),eshijo(X,M,H),esmujer(Y).
estia(X,Y):-eshermana(X,M), eshijo(Y,M,H), dif(M,X).