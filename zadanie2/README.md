Zaimplementuj w R obsługę skończonej przestrzeni probabilistycznej Ω = {1, . . . , N }. Założenia są następujące:
• Przestrzeń jest reprezentowana przez wektor długości N o składowych nieujemnych, których suma wynosi 1; składowa numer i tego wektora oznacza prawdopodobieństwo zdarzenia {i}.
• Zdarzenia reprezentowane są przez wektory logiczne o długości N tak, że np. zdarzenie {1, 3} dla N = 6
jest reprezentowane przez wektor c(TRUE, FALSE, TRUE, FALSE, FALSE, FALSE).
• Należy skonstruować funkcję event(x), która będzie tworzy ́c takie wektory na podstawie odpowiednich
wektorów liczbowych, np. wektor z poprzedniego punktu byłby równy event(c(1, 3)); “nadmiarowe”
zdarzenia elementarne mają być ignorowane, czyli np. event(7) dla N = 6 powinno zwracać zdarzenie
niemożliwe (czyli rep(FALSE, 6)).
• Należy skonstruować funkcje union(e1, e2), intersect(e1, e2), complement(e) wyznaczające, odpowiednio sumę, część wspólną i dopełnienie podanych zdarzeń.
• Należy zaimplementować funkcję prob(space, event) liczącą prawdopodobieństwo zdarzenia
event w przestrzeni reprezentowanej przez wektor space.