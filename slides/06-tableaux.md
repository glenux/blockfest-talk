# Tableaux

---

Concept
-------

----

### Définition

* Type complexe (par opposition aux types simples)
* Suite d'éléments désignés sous un même nom
* Ces éléments sont généralement de même type

----

### Propriétés

* Indice
* Longueur (limite) du tableau
* Temps d'accès constant

---

Opérations sur les tableaux
---------------------------

----

### Accès à une valeur


*nomDeLaVariable[indice]*

```
tableau[0];
notes[index];
```

----

### Utilisation 

* Lecture
* Modification

```
var x = tableau[0];
tableau[0] = y;
```

----

### Exercice

- Définir un tableau
- Accéder à un élément du tableau

----

### Exercice simples

* Echange de deux cases dans le tableau
* Transformer "DECALAGE" en "EDECALAG"<br>(décalage à droite)
* Transformer "DECALAGE" en "ECALAGED"<br>(décalage à gauche)
* Trouver le min / max / moyenne d'un tableau
* Recherche du nombre d'occurences de "X" dans un tableau
* Trouver le plus grand écart dans un tableau

----

### Exercices avancés

* Tris de tableaux (bulle, insertion)
* Tester si un tableau est trié
* Recherche dichotomique
* Trouver la position de la plus longue suite de zéros dans un tableau
* Faire la somme de deux tableaux dans un 3eme tableau

---

Tableaux à deux dimensions
--------------------------

S'écrit différemment selon les langages.
La passe d'initialisation est importante.

```
a = new Array(10);
for (var i=0;i<10;i++) { a[i] = new Array(10); }
```

---

Tableaux à plus de deux dimensions
----------------------------------

(quelle représentation ?)
- échange de colonnes / lignes
- vérifications

---

Réferences
----------

http://www.pise.info/algo/enonces8.htm#En8.6

http://fr.wikibooks.org/wiki/Programmation_Algorithmique/Tableaux

----

## Structures de données

 tableaux
Tri de tableaux (tri par sélection)

----
Tableaux et arbres

Tableaux et graphes
- Parcours en profondeur ?
- Parcours d'un arbre ?
- Listes chainées ?
- Coloration de graphe ?

