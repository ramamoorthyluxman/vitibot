### Régression linéaire

Tu disposes d'un jeu de données dans le fichier input.txt. Tu peux visualiser ce jeu de données
en ouvrant la page index.html avec ton navigateur. Tu devrais voir un nuage de points en 2 dimensions.

L'objectif est de détecter la droite que tu distingues et qui représente environ 23% des données (très bruité).

## 1) Régression linéaire

##### a) Lecture du fichier

Ouvre le fichier `input.txt` avec ton programme. Le format est très simple : un point par ligne, composé de 2 flottants séparés par un espace.

##### b) Régression linéaire

Trouve une fonction qui fait une régression linéaire affine sur Internet, dans le langage que tu as choisi, et intégre
la afin de l'appliquer sur le jeu de données.

##### c) Affichage du résultat

Affiche l'équation de la droite ainsi trouvée et visualise le résultat grâce à l'interface graphique.
Tu constates que la régression linéaire ne donne pas du tout le modèle attendu.

## 2) Implémentation d'un algorithme

##### a) L'algorithme

Tu vas maintenant implémenter un algorithme qui, à partir du même modèle de régression linéaire, permet de trouver le
bon résultat. Tu dois écrire l'algorithme toi même.

L'algorithme est le suivant :

Parameters: - data: the data set of 2d points - computeModel: a function that returns the model (a, b) given a set of points
-> here you will use the linear regression function used in 1) - errorModel: a function that returns the error of a point to the model. The smaller the error is,
the better the point fits the model. - n: number of points required to create a model - k: number of iterations - t: threshold value the error of a point cant exceed to fit a model - d: number of points to get a valid model
Returns: - The best model found (with the smaller error) that have at least d points

    iterations = 0
    bestModel = none
    bestError = infinity
    while iterations < k {
    	candidates = n values randomly selected in data
    	model = the model of the candidates points

    	for every point not in candidates {
    		if point has an error < t {
    			add the point to the candidates
    		}
    	}

    	if number of candidates is > d {
    		betterModel = model of updated candidates points (now with a lot more points)
    		sumError = the sum of all candidates points error with betterModel
    		if sumError < bestError {
    			bestModel = betterModel
    			bestError = sumError
    		}
    	}
    }
    return bestModel.

##### b) Application

Utilise ta fonction avec les paramètres suivants :

- data: les données du fichier
- computeModel: la fonction de régression linéaire
- errorModel: une fonction d'erreur adaptée au modèle
- n: 2
- k: 85
- t: 0.02
- d: 20

##### c) Complexité

En considérant que le calcul du modèle et de l'erreur sont en O(1), quelle est la complexité de ton implémentation de l'algorithme, en fonction de N le nombre de points et K le nombre d'itérations ?

##### d) Bonus

Connais-tu le nom de l'algorithme que tu as implémenté ?

##### e) Bonus 2

Sachant que le nombre de points valides pour le modèle recherché représente `p`% des points.
Sachant qu'on prend aléatoirement `n` points à chaque itération et qu'il y a `k` itérations.
Quelle est la probabilité de ne pas tomber sur `n` points du modèle après `k` itérations ?
Par extension, exprime le nombre d'itérations `k` idéal pour qu'il y ait au moins 99% de probabilité pour tomber au
moins une fois sur `n` points du modèle.
Applique la formule pour `n = 2` et `p = 23%` et donne le résultat.
