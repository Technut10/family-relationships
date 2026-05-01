% Some rules.
child(Child, Parent) :- parent(Parent, Child).

son(Son, Parent) :- parent(Parent, Son), \+ female(Son).

daughter(Daughter, Parent) :- parent(Parent, Daughter), female(Daughter).

father(Father, Child) :- parent(Father, Child), \+ female(Father).

mother(Mother, Child) :- parent(Mother, Child), female(Mother).

sibling(Person1, Person2) :- 
    parent(Parent, Person1), 
    parent(Parent, Person2), 
    Person1 \= Person2.

brother(Person1, Person2) :- 
    sibling(Person1, Person2), 
    \+ female(Person1).

sister(Person1, Person2) :-
    sibling(Person1, Person2),
    female(Person1).

grandparent(Grandparent, Grandchild) :-
    parent(Grandparent, Parent),
    parent(Parent, Grandchild).

grandfather(Grandfather, Grandchild) :-
    grandparent(Grandfather, Grandchild),
    \+ female(Grandfather).

grandmother(Grandmother, Grandchild) :-
    grandparent(Grandmother, Grandchild),
    female(Grandmother).

grandchild(Grandchild, Grandparent) :- grandparent(Grandparent, Grandchild).

grandson(Grandson, Grandparent) :-
    grandchild(Grandson, Grandparent),
    \+ female(Grandson).

granddaughter(Granddaughter, Grandparent) :-
    grandchild(Granddaughter, Grandparent),
    female(Granddaughter).

aunt(Aunt, Person) :-
    parent(Parent, Person),
    sibling(Aunt, Parent),
    female(Aunt).

uncle(Uncle, Person) :-
    parent(Parent, Person),
    sibling(Uncle, Parent),
    \+ female(Uncle).

niece(Niece, Person) :-
    aunt(Person, Niece),
    female(Niece).
niece(Niece, Person) :-
    uncle(Person, Niece),
    female(Niece).

nephew(Nephew, Person) :-
    aunt(Person, Nephew),
    \+ female(Nephew).
nephew(Nephew, Person) :-
    uncle(Person, Nephew),
    \+ female(Nephew).

cousin(Person1, Person2) :-
    parent(Parent1, Person1),
    parent(Parent2, Person2),
    sibling(Parent1, Parent2).

% Some facts.
% parent(Parent, Child).
% female(Person).

parent(dave, steve).
parent(dave, mike).
parent(dave, brenda).
parent(lynn, steve).
parent(lynn, mike).
parent(lynn, brenda).

parent(steve, laurel).
parent(steve, tessa).
parent(paula, laurel).
parent(paula, tessa).

parent(mike, matt).
parent(mike, mark).
parent(maureen, matt).
parent(maureen, mark).

female(lynn).
female(brenda).
female(laurel).
female(tessa).
female(maureen).
female(paula).

% Example queries:
%
% parent(lynn, steve).          -> true
% mother(X, steve).             -> X = lynn
% father(X, laurel).            -> X = steve
% sibling(steve, mike).         -> true
% brother(mike, brenda).        -> true
% sister(brenda, steve).        -> true
% grandmother(lynn, laurel).    -> true
% grandfather(dave, matt).      -> true
% grandchild(X, dave).          -> X = laurel, tessa, matt, mark
% aunt(brenda, laurel).         -> true
% uncle(mike, laurel).          -> true
% niece(tessa, brenda).         -> true
% nephew(matt, brenda).         -> true
% cousin(laurel, matt).         -> true