eshombre(homero).
eshombre(bart).
esmujer(marge).
esmujer(lisa).
esmujer(maggie).
eshijo(lisa,marge,homero).
eshijo(bart,marge,homero).
eshijo(maggie,marge,homero).
eshermana(Y,X):-eshijo(Y,marge,homero),eshijo(X,marge,homero),esmujer(Y),dif(X,Y).