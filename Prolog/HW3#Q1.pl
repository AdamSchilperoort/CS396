likes(raymond,debra).   %define raymond likes debra
annoys(frank,marie).    %frank annoys marie
likes(frank,eating).    %frank likes eating
tall(robert).           %robert is tall as a single arity
plays(raymond,golf).    %raymond plays golf
plays(frank,football).  %frank plays football
likes(marie,cooking).   %marie likes cooking
loves(Y,X) :- likes(X,cooking),likes(Y,eating). %defines the loves definition
