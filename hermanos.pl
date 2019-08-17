%hijos enrique7
%Arturo Tudor
padre(enrique7,arturo).
padre(enrique7,margarita).
padre(enrique7,enrique8).
padre(enrique7,mariatudor).
padre(enrique8,maria1).
padre(enrique8,isabel1).
padre(enrique8,eduardo6).
padre(enrique8,henry).
padre(jacabo4,jacobo5).
padre(jacobo5,maria1deescocia).
padre(charles,henrybrandon).
padre(charles,frances).
padre(enriquegrey,juana1).
padre(enriquegrey,catalina).
padre(charles,eleanor).
padre(charles,henrybrandon2).
padre(enriquegrey,mariagrey).
madre(isabeldeyork,arturo).
madre(isabeldeyork,margarita).
madre(isabeldeyork,enrique8).
madre(isabeldeyork,mariatudor).
madre(margarita,jacobo5).
madre(mariadeguisa,maria1deescocia).
madre(catalina,maria1).
madre(ana,isabel1).
madre(jane,eduardo6).
madre(elizabeth,henry).

madre(mariatudor,henrybrandon).
madre(mariatudor,frances).
madre(frances,juana1).
madre(frances,catalina).
madre(frances,mariagrey).
madre(mariatudor,eleanor).
madre(mariatudor,henrybrandon2).

%Funciones
niete(X,Y):-padre(Z,Y),padre(X,Z);madre(Z,Y),padre(X,Z).
hermane(X,Y):-padre(C,X),padre(C,Y),madre(C,X),madre(C,Y),X\=Y.
mediohermane(X,Y):-((padre(C,X),padre(C,Y));(madre(C,X),madre(C,Y))),X\=Y.
abuelo(X,Y):-padre(C,Y),padre(X,C).
abuela(X,Y):-madre(C,Y),madre(X,C).
tie(X,Y):-padre(C,Y),hermane(X,C);madre(C,Y),hermane(X,C).
prime(X,Y):-niete(Z,X),niete(Z,Y),not(hermane(X,Y)).




