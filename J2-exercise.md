# Partie 1 : Révision du J1

## Questions

Je vous suggère d'exécuter uniquement les commandes que vous comprenez :

* Que fait la commande `cd ..` ?
* Que fait la commande `cd -` ?
* Que fait la commande `ls /home` ?
* Que fait la commande `ls -R /` ?
* Que fait la commande `rm -rf /` ?

Utilisez un éditeur de texte pour répondre à ces questions.

Path du fichier : `/home/<user>/CESI/2024-cmd-linux/exercices/J2/reponses`

* Comment protéger votre fichier pour éviter qu'il soit modifié ?

## Création d'un script

Créez le script `J2-P1-exercise.sh` pour réaliser les tâches suivantes :

Créez les fichiers et dossiers suivants :
* `/home/<user>/CESI/2024-cmd-linux/exercices/J2/instructions` (en tant que fichier)
* `/home/<user>/CESI/2024-cmd-linux/exercices/J2/my-list-of-cmd` (en tant que fichier)
* `/home/<user>/CESI/2024-cmd-linux/exercices/J2/data` (en tant que dossier)
* `/home/<user>/CESI/2024-cmd-linux/note-pad/cmd-utils-J2` (en tant que fichier, avec le contenu "Hello World!" et des droits d'écriture pour le propriétaire, le groupe, et les autres)
* `/home/<user>/CESI/2024-cmd-linux/note-pad/personal-notes.txt` (en tant que fichier)

## Bonus 1 : Sécuriser le script

Je vais essayer de tester votre script de manière inattendue.

> Indice : Chemin absolu vs chemin relatif

## Bonus 2 : Exécuter les scripts de la J1

Cloner le dépôt `git` suivant : `git clone https://github.com/giraud-d/edu-cmd-linux.git`

# Partie 2 : Les redirections

## S'exercer

* Créer un fichier `toto` contenant le texte `Hello World!` (indice : utiliser `echo`).
* Créer un fichier `toto` contenant `Hello World! Bonjour` sans écrire explicitement `Hello World` dans la commande.
* Créer un fichier `root_dir` listant tous les fichiers et dossiers à la racine du système.
* Créer un fichier `history_mkdir` listant le nombre de fois où vous avez utilisé la commande `mkdir`.
* Combien de caractères contient le fichier `toto` (utiliser le fichier en STDIN).

## Bonus 1 :

* Impressionnez-moi avec des redirections et des pipes.
* Impressionnez-moi en utilisant des redirections et des pipes pour accomplir une tâche simple de manière innovante.

## Bonus 2 : bashrc

[Documentation](https://ultahost.com/knowledge-base/bashrc-file-in-linux/)

* Créer l'alias `..` pour `cd ..`
* Créer d'autres alias de votre choix

# Partie 3 : Avec des fichiers de logs

* Afficher le contenu d'un fichier très long avec `cat`

[Comment trouver les fichiers volumineux sous Linux](https://www.malekal.com/comment-trouver-fichiers-volumineux-linux/) :

```bash
sudo du -a /home/ | sort -n | tail -10`
```

## Niveau 1

1. Compter le nombre total de lignes
    - Objectif : Utiliser `wc` pour compter les lignes dans le fichier de log.
    - Commande :


2. Rechercher une date spécifique
    - Objectif : Utiliser `grep` pour trouver toutes les entrées correspondant à une date spécifique, par exemple "2004-03-12".
    - Commande :


3. Extraire les premières lignes du fichier
    - Objectif : Utiliser `head` pour afficher les 10 premières lignes et observer la structure du fichier de log.
    - Commande :


## Niveau 2

1. Compter les occurrences d'une adresse IP
    - Objectif : Rechercher une adresse IP spécifique (par exemple "192.168.0.1") et utiliser `wc` pour compter le nombre d'occurrences.
    - Commande :


2. Lister les 5 dernières tentatives de connexion
    - Objectif : Utiliser `tail` pour afficher les 5 dernières lignes du log.
    - Commande :


3. Extraire les heures des tentatives de connexion
    - Objectif : Utiliser `awk` pour extraire l'heure de chaque tentative de connexion.
    - Commande :


## Niveau 3

1. Comptabiliser les tentatives de connexion par jour
    - Objectif : Utiliser `awk` pour extraire la date, puis `sort` et `uniq -c` pour compter les occurrences de chaque date.
    - Commande :


2. Lister les adresses IP distinctes avec leurs occurrences
    - Objectif : Utiliser `grep` pour extraire les adresses IP, puis `uniq -c` pour lister chaque adresse avec le nombre d'occurrences.
    - Commande :


3. Trouver les lignes avec des erreurs spécifiques
    - Objectif : Utiliser `grep` avec une regex pour trouver les lignes contenant des erreurs comme "Failed password".
    - Commande :


4. Comparer les heures de connexion réussie et échouée
    - Objectif : Filtrer les lignes avec "Accepted password" et "Failed password", extraire l'heure, puis trier pour comparaison.
    - Commandes :


Ces exercices aideront vos étudiants à comprendre progressivement les concepts de base et avancés du traitement de texte sous Linux, essentiels pour la gestion de logs en administration système.

# Partie 4 : Projets de groupe

...

