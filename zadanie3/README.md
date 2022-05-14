Napisz skrypt w R implementujący rozkład dyskretny dwuwymiarowy. Załoąenia są następujące:
* Zbiór wartości prawdopodobnych S ma postać {1, . . . , m} × {1, . . . , n} dla pewnych m, n ∈ N.
* Rozkład (pełny) jest zrealizowany w postaci macierzy prob o wyrazach nieujemnych sumujących się do 1, tzn. jeśli X i Y są składowymi zmiennej o implementowanym rozkładzie, to prob[i, j] = P (X = i, Y = j).
* Macierze z poprzedniego punktu są tworzone przez funkcję prob(m), której argumentem jest macierz o wyrazach nieujemnych niekoniecznie sumujących się do 1 — funkcja ma dokonywać stosownej normalizacji (tzn. dzielić wszystkie wyrazy przez ich sumę).
* Funkcja boundary(prob, i) zwraca wektor rozkładu brzegowego względem zmiennej numer i (tzn. boundary(prob, 1) zwraca wektor rozkładu brzegowego względem X).
* Funkcja conditional(prob, i, v) zwraca wektor rozkładu warunkowego względem wartości v zmiennej numer i, np. conditional(prob, 1, 3)[2] = P (Y = 2|X = 3).
* Funkcja mean(prob, i) zwraca wartość oczekiwaną składowej numer i, jeśli i ma wartość NA (która ma być domyślna) powinien zostać zwrócony wektor wartości oczekiwanej.
* Funkcja covariance(prob) zwraca macierz kowariancji.
* Funkcja independent(prob) zwraca TRUE jeśli składowe są niezależne, FALSE w przeciwnym przypadku