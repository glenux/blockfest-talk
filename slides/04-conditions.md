Introduction à l'algorithmique
==============================

### Structures conditionelles

<br>

2014-07

<br>

**[NETCAT](http://www.netcat.io) / [@netcat](http://twitter.com/netcat)**

---

Expressions conditionnelles
---------------------------

---

Si ... Alors .. Sinon
---------------------

----

### Exercice

Écrire [un programme](../exercices/verifie-prenom.js) qui :

* Demander le nom de l'utilisateur
* Stocke le résultat dans la variable prénom
* Teste si le prénom est "Marc"
* Affiche "bienvenue Marc" si c'est Marc
* Afficher "tu n'est pas le bienvenu" sinon

----

### Exercices

* **verifie-nombre-seuil**: 
  * demander un nombre à l'utilisateur
  * afficher "moins que 5" si le nombre est inférieur à 5
  * afficher "plus que 5" si le nombre est supérieur à 5
  * afficher "précisément 5" si le nombre est égal à 5

<br>

* **multiplie-seuil** :
  * demander un nombre à l'utilisateur
  * multiplier par deux si inférieur à un seuil donné (ex: 5)
  * affiche le resultat

---

Switch / Case
-------------

----

### switch(...) { case X: ... case Y: ... }

* permet de choisir entre plusieurs branches
* une seule condition, l'égalité (==)

----

### switch: exemple

```
switch(offre) {
case "GOLD": 
	reduction="15%";
	break;
case "SILVER": 
	reduction="10%";
	break;
case "COPPER": 
	reduction="5%";
	break;
default: // ne possède pas la carte du magasin
}
```

----

### Exercice

**switch-normalize-input** : 
**conditions-switch-hello-language** : Faire un programme qui 
  * demande son prénom à l'utilisateur
  * choisit la formule de salutations en fonction du prénom entré par
  	l'utilisateur (ex: Jean &rArr; Bonjour, Nikos &rArr; Kalimera, Aissam
  	&rArr; Salam alaikum, James &rArr; Hello, Viktor &r...) 
  * affiche une salutation dans la langue adaptée 


