articulo(refrescos,36).
articulo(cigarrillos,50).
articulo(pollo,140).
articulo(tostadas,30).
articulo(crema,22).
articulo(cerveza,30).
articulo(leche,28).
articulo(cafe,40).
articulo(bolillo,2).
articulo(lechuga,15).

iva(X,I) :- articulo(X,P), I is P*0.16.
