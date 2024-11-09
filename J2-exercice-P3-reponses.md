## Niveau 1

1. Compter le nombre total de lignes
    - Objectif : Utiliser `wc` pour compter les lignes dans le fichier de log.
    - Commande :
        ```bash
        wc -l OpenSSH_2k.log
        ```

2. Rechercher une date spécifique
    - Objectif : Utiliser `grep` pour trouver toutes les entrées correspondant à une date spécifique, par exemple "2004-03-12".
    - Commande :
        ```bash
        grep "2004-03-12" OpenSSH_2k.log
        ```

3. Extraire les premières lignes du fichier
    - Objectif : Utiliser `head` pour afficher les 10 premières lignes et observer la structure du fichier de log.
    - Commande :
        ```bash
        head -n 10 OpenSSH_2k.log
        ```

## Niveau 2

1. Compter les occurrences d'une adresse IP
    - Objectif : Rechercher une adresse IP spécifique (par exemple "192.168.0.1") et utiliser `wc` pour compter le nombre d'occurrences.
    - Commande :
        ```bash
        grep "192.168.0.1" OpenSSH_2k.log | wc -l
        ```

2. Lister les 5 dernières tentatives de connexion
    - Objectif : Utiliser `tail` pour afficher les 5 dernières lignes du log.
    - Commande :
        ```bash
        tail -n 5 OpenSSH_2k.log
        ```

3. Extraire les heures des tentatives de connexion
    - Objectif : Utiliser `awk` pour extraire l'heure de chaque tentative de connexion.
    - Commande :
        ```bash
        awk '{print $3}' OpenSSH_2k.log
        ```

## Niveau 3

1. Comptabiliser les tentatives de connexion par jour
    - Objectif : Utiliser `awk` pour extraire la date, puis `sort` et `uniq -c` pour compter les occurrences de chaque date.
    - Commande :
        ```bash
        awk '{print $1}' OpenSSH_2k.log | sort | uniq -c
        ```

2. Lister les adresses IP distinctes avec leurs occurrences
    - Objectif : Utiliser `grep` pour extraire les adresses IP, puis `uniq -c` pour lister chaque adresse avec le nombre d'occurrences.
    - Commande :
        ```bash
        grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' OpenSSH_2k.log | sort | uniq -c
        ```

3. Trouver les lignes avec des erreurs spécifiques
    - Objectif : Utiliser `grep` avec une regex pour trouver les lignes contenant des erreurs comme "Failed password".
    - Commande :
        ```bash
        grep "Failed password" OpenSSH_2k.log
        ```

4. Comparer les heures de connexion réussie et échouée
    - Objectif : Filtrer les lignes avec "Accepted password" et "Failed password", extraire l'heure, puis trier pour comparaison.
    - Commandes :
        ```bash
        grep "Accepted password" OpenSSH_2k.log | awk '{print $3}' > success_times.txt
        grep "Failed password" OpenSSH_2k.log | awk '{print $3}' > fail_times.txt
        ```
