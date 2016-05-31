Introduction à l'algorithmique
==============================

### Boucles

<br>

2014-07

<br>

**[NETCAT](http://www.netcat.io) / [@netcat](http://twitter.com/netcat)**

---

Concept
-------

* on a besoin d'une condition d'arrêt / de continuation
* ce qui est entre accolades est la zone "répétée"

&rArr; parallèle avec les algorigrammes

---

do { ... } while ( _condition_ )
-------------------

* Fait... Tant Que
* Execute d'abord
* Test en fin de boucle

----

### Exercices

* **compte-jusqua10** : Afficher les nombres de 1 à 10.
* **boucles-sum-1to10** : Faire la somme des nombres de 1 à 10. 

----

while ( _conditions_ ) { ... }
------------------------------

----

Exercices

**boucles-nbval-somme** &mdash; Demander un nombre ``nbVal`` à l'utilisateur.
En fonction de ce nombre, demander ``nbVal`` nouveaux nombres à l'utilisateurs et faire leur somme.

<br>

**boucle-nan-somme** &mdash; Demander des nombres à l'utilisateur
tant qu'il n'entre pas autre chose que des chiffres.
Afficher la somme de ces chiffres à la fin.

----

### Exercices

* faire la somme des nbVal nombres demandés à l'utilisateur - OK
* donner une valeur positive paire (boucler tant que c'est faux)
* comparer while & do.. while sur l'exemple précédent
* un chiffre au hasard, 10 coups pour trouver

----

Pour ... faire ...
------------------

*Exercices*

- faire la somme des nbVal nombres demandés à l'utilisateur  - OK
- faire la somme des chiffres de 1 à 10 (exo de la veille) - OK

---

Comparaisons
------------

----

### Avec « for »

Un compteur qui commence à 1, reste inférieur à 10, avance de 1 en 1 et affiche i à chaque étape.

```javascript
var i;
for(i = 1; i <= 10; i += 1) {
    alert(i);
}
```

----

### Avec « while ... »

```javascript
var i = 1;
while(i<=10) {
    alert(i);
    i+=1;
}
```

----

### Avec « do ... while ... »

```javascript
var i = 0;
do {
    i+=1;
    alert(i);
} while (i<10);
```

----

### Comment bien choisir sa boucle ?

- **for** : si le nombre d'itération est connu d'avance
- **do** .. while : si le traitement répété au moins une fois
- **while** : tout le reste

  - exemple d'un MAUVAIS choix de boucle (répéter + calcul , plutot que tant que)

FIXME: exercices

----

### Break : pour sortir d'une boucle

Il faut être capable de sortir d'une boucle !

```javascript
var i = 0;
while(true) {
  if (i > 10) { break; }
  i += 1;
}
```

----

### Break : exercices

**break-on-zero**: 

* demander à l'utilisateur des nombres et afficher leur carré 
* s'arrêter lorsque l'utilisateur saisit zéro

**break-sumlimit**

* demander à l'utilisateur des nombres
* faire leur somme
* s'arrêter dès que la somme dépasse 500

----

### Boucles dans les boucles

----

### Programmation structurée et goto

