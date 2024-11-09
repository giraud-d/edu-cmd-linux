# Exercices Linux Avancé

## 1. SSH et Connexion au Serveur

### Exercice 1.1 : Génération et Configuration SSH
1. Générez une paire de clés SSH avec votre email
2. Affichez votre clé publique
3. Envoyez la clé publique au formateur
4. Connectez-vous au serveur avec : `ssh <votre-prénom>@68.183.221.218` (exemple `ssh damien@68.183.221.218`)
5. Faire un `git clone https://github.com/giraud-d/edu-cmd-linux` dans votre répertoire

## 2. Gestion des Droits

### Exercice 2.1 : Utilisateurs et Groupes
1. Créez un groupe (choisissez un nom pour votre binome)
2. Ajoutez-vous au groupe
3. Créez un dossier "projet_shared"
4. Donnez les droits au groupe sur ce dossier

### Exercice 2.2 : Permissions
1. Créez trois fichiers : secret.txt, groupe.txt, public.txt
2. Configurez les droits pour que :
    - secret.txt soit lisible uniquement par vous
    - groupe.txt soit modifiable par le groupe
    - public.txt soit lisible par tous mais modifiable que par vous

## 3. Redirections

### Exercice 3.1 : Manipulations Basiques
1. Créez un fichier hello.txt contenant "Hello World"
2. Ajoutez une nouvelle ligne sans écraser le contenu
3. Redirigez la sortie de 'ls -la' vers un fichier
4. Comptez le nombre de fichiers dans votre dossier

### Exercice 3.2 : Pipes
1. Trouvez tous les processus sshd
2. Comptez combien de fois vous avez utilisé la commande cd
3. Listez uniquement les fichiers .txt de votre dossier

## 4A. Recherche dans les Fichiers - Simple

Réessayer les exercices dans `J2-exercise.md` > Partie 3
Regarder dans `J2-exercice-P3-reponses.md` pour les solutions

## 4B. Recherche dans les Fichiers - Très avancé (optionnel)

Utilisez le fichier de log fourni dans `ressources/ssh-log`

### Exercice 4.1 : Analyse Basique
1. Trouvez toutes les connexions réussies
2. Comptez le nombre de tentatives échouées
3. Listez les adresses IP uniques

### Exercice 4.2 : Analyse Avancée
1. Créez un rapport des connexions par heure
2. Identifiez l'adresse IP avec le plus de tentatives
3. Trouvez les tentatives de connexion root

## 5. Scripting

### Projet A : Jeu du Nombre
Créez un script qui :
1. Génère un nombre aléatoire entre 1 et 100
2. Demande à l'utilisateur de deviner
3. Indique si c'est plus grand ou plus petit
4. Compte le nombre d'essais (optionnel)
5. Affiche un message de victoire (optionnel)

```bash
#!/bin/bash

# Structure de base
nombre=$((RANDOM % 100 + 1))
essais=0

while true; do
    # À compléter
done
```

### Projet B : Surveillance de Répertoire
Créez un script qui :
1. Surveille un répertoire donné
2. Détecte les nouveaux fichiers
3. Log les changements dans un fichier
4. Peut être arrêté proprement (CTRL+C) (optionnel)
5. Affiche des statistiques à la fin (optionnel) 

```bash
#!/bin/bash

# Structure de base
repertoire="$1"
log_file="surveillance.log"

if [ ! -d "$repertoire" ]; then
    echo "Le répertoire n'existe pas"
    exit 1
fi

# Fonction de nettoyage
cleanup() {
    # À compléter
}

trap cleanup SIGINT

while true; do
    # À compléter
    sleep 5
done
```

### Projet C : Votre projet

Si vous avez déjà finis les deux premiers projets

## 6. Casse le serveur

A 16h on essayera ensemble de casser le serveur (en mode burning man). Mais pas avant !
