### Radar

Tu as en entrée une liste d'obstacle et la position de chacun d'entre eux (x,y).
L'objectif est de parvenir à donner l'ordre dans lesquels seront scannés les obstacles,
en considérant que le radar commence le scan à l'angle 0 au départ (selon l'axe x),
et tourne dans le sens inverse des aiguilles d'une montre.

On t'assure qu'il n'y a aucune ambiguïté, normalement...

# Entrée:
- _ligne 1_ : un entier V indiquant la distance de visibilité du radar. `1 <= V <= 1000`
- _ligne 2_ : un entier N indiquant le nombre d'obstacles. `1 <= N <= 10 000`
- _ligne 3 à N+2_ : deux entiers `x_i y_i` séparés par un espace indiquant les coordonnées de l'obstacle. `1 <= x_i,y_i <= 1000`.


# Sortie:
- Une liste ordonnée des index des obstacles triée en fonction du principe de radar.

Les résultats attendus des entrées sont disponibles dans le _outputX.txt_ correspondant.

## Exemple:

```
Entrée :
1
5
0 1
2 2
-1 0
0 -1
1 0

Sortie :
4 0 2 3

```

Il y a 5 obstacles. En partant de la droite (axe des abscisses) et en tournant dans le sens inverse des aiguilles d'une montre,
on passera d'abord par (1, 0) qui a pour index 4, puis par (0, 1) qui a pour index 0,
puis par (-1, 0) qui a pour index 2, enfin par (0, -1) qui a pour index 3.

De plus, l'obstacle (2, 2) est situé à 4 unités du radar (qui a seulement une visibilité de V=1 unité). Il n'est donc pas visible.

La sortie est donc 4 0 2 3.
