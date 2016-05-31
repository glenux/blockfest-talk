Introduction à l'algorithmique
==============================

### Instructions et variables

<br/>

2014-07

<br/>

**[NETCAT](http://www.netcat.io) / [@netcat](http://twitter.com/netcat)**

---

Instructions 
------------

----

### Forme des instructions

* Dans l'ordre chronologique
* Séparées par des ";"
* Les blancs ne comptent pas

```
instruction;
instruction;
instruction;
```

----

### Commentaires

```
// commentaire sur une seule ligne

/* commentaire qui démarre sur une ligne
   et qui finit seulement lorsqu'on
   rencontre la balise de fin */
```

----

### Mots réservés

if else for do while switch case break typeof new delete null undefined ...

---

Entrées - Sorties
-----------------

----

### Entrées - Demander une valeur

* prompt(*unMessage*);

```
prompt("Bonjour monde");
```

----

### Sorties - Afficher une valeur

* alert();
* console.log();

```
alert("Bonjour monde");
```

---

Variables
---------

----

### Déclaration de variables

* *Étiquettes* sur des zones de mémoire
* Attention à donner des noms significatifs !

```
var nomDeMaVariable;
var variable1, variable2;
```

----

### Assignation de variable 

* Remplissage d'une case mémoire
* Attache à cette case une *étiquette* qui porte son nom

```
maVariable = 1;
jolieVariable = "toto";
```

----

### Utilisation de variables

* Retrouve la case mémoire qui possède l'*étiquette* correspondant au nom de la variable

```
alert(maVariable);
maVariable = maVariable + 1;
monAutreVariable = uneAutreVariable;
```

----

### Exercices

* **declare-store-display** : Déclarer trois variables, y stocker les valeurs 1, 2 et 3. Afficher le contenu de la deuxième variable.
* **prompt-store-display** : Demande à l'utilisateur son nom, puis lui affiche un message de bienvenue

----

### Types de variables

| Type          | Description                                        |
| ------------- | -------------------------------------------------- |
| **number**    | entiers ou flottants (contient la valeur **NaN**)  |
| **string**    | chaines de caractères                              |
| **boolean**   | valeur booléenne (VRAI ou FAUX)                    |
| **undefined** | valeur non définie                                 |
| **function**  | fonctions                                          |
| **null**      | valeur nulle                                       |
| **object**    | structures de données complexes                    |

----

### typeof - Teste le type

```
typeof 2 // 'number'
typeof 3.3 // 'number'
typeof "toto" // 'string'
typeof true // 'boolean'
typeof undefined // 'undefined'
typeof function() { } // 'function'
typeof null // 'object'
typeof { } // 'object'
```

----

### Typage des variables

* **fort ou faible** : selon capacité à 
  * respecter les types et limiter les conversions
  * et assurer au plus tôt la détection des erreurs
* **statique ou dynamique** : vérification du type 
  * lors de la compilation ?
  * ou bien à l'execution  ?
* **explicite, implicite** : est-ce que les types sont
  * indiqués à chaque fois par le développeur ?
  * devinés par le compilateur ou l'interpréteur ?

----

### Quelques exemples de typages

|     Langage    |  Sûreté  | Dynamisme | Expressivité |
| -------------- | -------- | --------- | ------------ |
| **Javascript** | Faible   | Dynamique | Implicite    |
| **C**          | Faible   | Statique  | Explicite    |
| **Ruby**       | Fort     | Dynamique | Implicite    |
| **OCaml**      | Fort     | Statique  | Implicite    |

---

Opérateurs arithmétiques
------------------------

----

### Opérateurs arithmétiques

* Opérent sur des valeurs numériques (des littéraux ou des variables) 
* Renvoient une valeur numérique. 

----

### Arithmétique de base

* l'addition (+)
* la soustraction (-)
* la multiplication (*)
* la division (/)
* le modulo (%)

----

### Arithmétique... suite

* Incrément (++)
  * Opérateur unaire. 
  * En préfixe (++x), renvoie la valeur après avoir ajouté un
  * En suffixe (x++), renvoie la valeur avant d'ajouter un.
* Décrément (--)
  * Opérateur unaire. 
  * En préfixe (--x), renvoie la valeur après avoir ajouté un
  * En suffixe (x--), renvoie la valeur avant d'ajouter un.
* Négation unaire (-)	
  * Opérateur unaire. 

----

### Exercices

* **prompt-and-sum** : 
  * Demande à l'utilisateur un premier chiffre, puis un second. 
  * Calcule le produit de la multiplication des deux chiffres.
  * Affiche le resultat.

* _Variante : essayer avec une addition à la place de la multiplication_
* _Attention : problème de parseInt :-) _

---

Opérateurs binaires
-------------------

----

### AND (ET) binaire

Renvoie un 1 à chaque position binaire pour laquelle les bits des deux opérandes sont à 1.

```
a & b
```

----

### OR (OU) binaire	

```
a | b	
```

Renvoie un 1 à chaque position binaire pour laquelle au moins un des bits des deux opérandes est à 1.

----

### XOR (OU exclusif) binaire

Renvoie un 1 à chaque position binaire pour laquelle au plus un des bits des deux opérandes est à 1.

```
a ^ b	
```

----

### NOT (NON) binaire

Inverse les bits de l'opérande.

```
~ a	
```

----

### Décalage binaire à gauche

Décale la représentation binaire de b bits sur la gauche et complète avec des zéros à droite.

```
a << b	
```

----

### Décalage binaire à droite	

Décale la représentation binaire de b bits sur la droite en ignorant les bits perdus.

```
a >> b	
```

----

### Décalage binaire à droite en complétant avec des zéros	

Décale la représentation binaire de b bits sur la droite en ignorant les bits perdus et ajoute des zéros sur la gauche.

```
a >>> b	
```

---

Opérateurs de comparaison
-------------------------

----

### Egalité (==)

Renvoie ``true`` si les opérandes sont égaux.

```
3 == var1
"3" == var1

3 == '3'
```

----

### Ingalité (!=)

Renvoie ``true`` si les opérandes sont différents.

```
var1 != 4
var2 != "3"
```

----

### Egalité stricte (===)

Renvoie ``true`` si les opérandes sont égaux et de même type. 

```
3 === var1
```

----

### Inégalité stricte (!==)

Renvoie ``true`` si les opérandes ne sont pas égaux et/ou ne sont pas de même type.

```
var1 !== "3"
3 !== '3'
```

----

### Supériorité stricte (>)

Renvoie ``true`` si l'opérande gauche est supérieur (strictement) à l'opérande droit.

```
3 === var1
```

----

### Supériorité ou égalité (>=)

Renvoie ``true`` si l'opérande gauche est supérieur ou égal à l'opérande droit.	

```
var2 >= var1
var1 >= 3
```

----

### Infériorité stricte (<)

Renvoie ``true`` si l'opérande gauche est inférieur (strictement) à l'opérande droit.

```
var1 < var2
"2" < "12"
```

----

### Infériorité ou égalité (<=)

Renvoie ``true`` si l'opérande gauche est inférieur ou égal à l'opérande droit.

```
var1 <= var2
var2 <= 5
```

----

### Exercice

Écrire [un programme](../exercices/expcond.js) qui :

* Demander le nom de l'utilisateur 
* Stocke le résultat dans la variable prénom
* Teste si le prénom est "Marc"
* Affiche le résultat (true / false ?)

---

Opérateurs d'affectation
------------------------

----

### Opération arithmétique et affectation

* ``x += y`` &hArr; ``x = x + y``
* ``x -= y`` &hArr; ``x = x - y``
* ``x *= y`` &hArr; ``x = x * y``
* ``x /= y`` &hArr; ``x = x / y``
* ``x %= y`` &hArr; ``x = x % y``

----

### Opération binaire et affectation

* ``x <<= y`` &hArr; ``x = x << y``
* ``x >>= y`` &hArr; ``x = x >> y``
* ``x >>>= y`` &hArr; ``x = x >>> y``
* ``x &= y`` &hArr; ``x = x & y``
* ``x ^= y`` &hArr; ``x = x ^ y``
* ``x |= y`` &hArr; ``x = x | y``

---

Conversion de type
------------------

----

### Conversions implicites

Dans certains contextes, Javascript effectue des
conversions automatiques

```
1 == '1'
1 == true
```

----

### Conversions implicites - contextes

* Opérateurs non-strict d’égalité (==), < et >:
* Contexte boolen (while(...), if(...), etc):
  * false &rArr; false,
  * true &rArr; true
  * undefined &rArr; false,
  * null &rArr; false
  * 0 &rArr; false
  * NaN &rArr; false
  * "" &rArr; false
  * Objet &rArr; true
  * Autres cas à true

**Pas de conversion quand on a deux objets**: ils doivent
référer au même objet

----

### Conversion implicites - quelques règles

* Conversion vers un string
  * Si l’objet a une méthode toString(), elle est exécutée
  * Si la méthode valueOf() existe, elle est exécutée
  * Sinon une exception est lancée
* Conversion vers une valeur numérique:
  * Si la méthode valueOf() existe, elle est exécutée
  * Si l’objet a une méthode toString(), elle est exécutée
  * Sinon une exception est lancée

* On peut convertir explicitement: String(obj), Number(obj)

----

### Conversions explicites

* **parseInt(_chaine_, _base_)** - convertit une chaine de caractères en entier
* **parseFloat(_chaine_, _base_)** - convertit une chaine de caractères en flottant
* Number(_string_) - convertit une chaine de caractères en nombre (entier ou flottant, selon)
* String(_nombre_) - converti un nombre en chaine de caractères

---

Questions
---------

---

[Suite: Structures conditionnelles](04-conditions.md)

<!-- https://developer.mozilla.org/fr/docs/Web/JavaScript/Guide/Expressions_et_Op%C3%A9rateurs#Op.C3.A9rateurs_d'affectation -->
