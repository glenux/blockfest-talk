Introduction à l'algorithmique
==============================

### Fonctions

<br/>

2015-01

<br/>

**[NETCAT](http://www.netcat.io) / [@netcat](http://twitter.com/netcat)**

---

Concept
-------

* Sous-programme (ex: béchamel vs gratin)

* Une fonction est un objet qu’on peut manipuler comme tout autre objet

---

### Utilisation

---

### Déclaration

Trois manières de créer une fonction:

* Déclaration
* Expression de fonction (fonction anonyme)
* Par l’appel de ``new Function``

Les fonctions déclarées sont parsées avant l’exécution
du script (on peut donc l’appeler avant sa définition)

----

### return - Valeur de retour

Une fonction retourne toujours une valeur (par défaut
c’est la valeur undefined)

----

### Expression de fonctions

Partout où on peut mettre une valeur (un
objet par exemple), on peut mettre une
expression de fonction

```
var increment = function(x) { return x + 1; };
resultat = increment(3);
```

**Attention :** dans ce cas, la fonction n’est pas
créée avant l’exécution du script

---

Environnement d'une fonction
---------------------------

----

### Traitement d'un script

LexicalEnvironment (voir Javascript Gagnon)
window - environnement global
Le traitement d’un script suit les étapes suivantes:
1. Traitement des déclarations de fonction, qui sont
ajoutées à window
2. Traitement des variables déclarées avec var, qui sont
elles aussi ajoutées à window, mais avec undefined
comme valeur
3. Le code est exécuté

----

### Environnement lexical d'une fonction

Voici se qui se passe quand une fonction est exécutée:
1. Son environnement lexical est créé
2. Son environnement lexical est peuplé par les
variables paramètres, les variables locales (celles
déclarées avec var) et les fonctions imbriquées
déclarées
3. Le code est exécuté
4. À la fin de l’exécution l’environnement lexical est
détruit (sauf en situation de fermeture, comme nous
le verrons plus loin)


----

### Portée

* Les blocs n’ont pas de portée
* Les variables utilisées dans une expression for
existent encore à la sortie de la boucle

----

### Fermeture (closure)

* Quand une variable n’est pas trouvée dans
l’environnement lexical d’une fonction, on la
cherche dans le premier environnement englobant
* À noter qu’une variable initialisée sans le mot-clé
var sera toujours placée dans l’environnement
lexical global, soit window
* Une fonction peut continuer d’exister une fois que
l’exécution de sa fonction englobante est terminée
(ce sera le cas si on retourne cette fonction)
* Dans ce cas, la fonction conserve un lien vers
l’environnement lexical de la fonction englobante

----

### Fermeture - suite

```
function f(x) {
	function g(y) {
		return x + y;
	};
	return g;
}

// retourne la fonction g(), 
// mais x sera liée à la valeur 3
var ajouterTrois = f(3); 

ajouterTrois(4);
```
----

### Lien avec les variables

Une variable déclarée avec le mot-clé var est une
variable locale

----

### Parametres

----

### Variables libres

----

### Variables liées

----

### Recouvrement de variable

---


Fonctions récursives
--------------------

----

## Appels de fonctions vs pile

----

### Condition d'arrêt

----

### Exercices

---

### Exercices

* fonction "calcul du prix TTC"
* fonction "calcul du prix HT"

