# J3

Le jeudi 14 novembre de 8h30 à 16h30

## Sujets à aborder (fiche pédagogique) pour l'ensemble du module

- Historique / position sur le marché
- Concepts de base : file/user/data/processus/droits
- Commandes liées aux concepts de base
- Redirection des entrées / sorties
- Editeurs interactifs VI, VIM, NANO
- Présentation des streams editors wc, tr, sort, grep, cut, uniq
- Programmation du shell sh : variables, structures de contrôle if et while

## Partie 0 : Tab

La touche Tabulation est mon amie !

## Partie 1 : SSH et Clés SSH

### Qu'est-ce que SSH ?
SSH (Secure Shell) est un protocole qui permet de se connecter de manière sécurisée à un serveur distant. La connexion est cryptée, ce qui signifie que toutes les données échangées sont protégées.

### Les clés SSH
- Une paire de clés SSH comprend :
    - Une clé privée (à garder secrète)
    - Une clé publique (à partager)
- Principe : La clé publique encode, la clé privée décode
- Avantage : Plus sécurisé qu'un mot de passe

### Générer une paire de clés
```bash
# Génération basique
ssh-keygen -t rsa -b 4096

# Avec un commentaire (recommandé)
ssh-keygen -t rsa -b 4096 -C "votre_email@exemple.com"
```

### Utiliser les clés
```bash
# Copier la clé sur un serveur
ssh-copy-id user@serveur

# ou manuellement
cat ~/.ssh/id_rsa.pub | ssh user@serveur "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
```

## Partie 2 : REVISION - Gestion des Droits

### Les Utilisateurs et Groupes
- Chaque fichier appartient à un utilisateur et un groupe
- Les utilisateurs peuvent appartenir à plusieurs groupes
- Le fichier `/etc/passwd` contient les infos utilisateurs
- Le fichier `/etc/group` contient les infos groupes

### Commandes de Base
```bash
# Voir à qui appartient un fichier
ls -l file

# Changer le propriétaire
chown user fichier
chown utilisateur:group file

# Créer un group
addgroup new_group

# Ajouter un utilisateur à un groupe
usermod -a -G new_group user

# Changer le groupe
chgrp new_group file
```

### Les Droits d'Accès
```bash
# Format : rwxrwxrwx
# r (4) : lecture
# w (2) : écriture
# x (1) : exécution
# Pour : user/group/others

# Exemples chmod
chmod 755 fichier  # rwxr-xr-x
chmod u+x fichier  # Ajoute exécution pour user
chmod g-w fichier  # Retire écriture pour groupe
```

## Partie 3 : REVISION - Redirections

### Types de Redirections
```bash
# Sortie standard (stdout)
commande > fichier    # Écrase
commande >> fichier   # Ajoute

# Entrée standard (stdin)
commande < fichier

# Erreur standard (stderr)
commande 2> fichier
commande 2>> fichier

# Rediriger stdout et stderr
commande &> fichier
```

### Les Pipes
```bash
# Enchaîner des commandes
commande1 | commande2

# Exemple pratique
ps aux | grep nginx
history | grep mkdir | wc -l
```

## Partie 4 : REVISION - Recherche dans les Fichiers

### Find
```bash
# Recherche par nom
find /chemin -name "pattern"

# Recherche par type
find /chemin -type f  # fichiers
find /chemin -type d  # dossiers

# Avec exécution
find /chemin -name "*.txt" -exec rm {} \;
```

### Grep
```bash
# Recherche simple
grep "motif" fichier

# Options utiles
grep -i "motif"  # Insensible à la casse
grep -r "motif"  # Récursif
grep -v "motif"  # Inverse
grep -n "motif"  # Avec numéros de ligne
```

### AWK
```bash
# Format de base
awk 'pattern { action }' fichier

# Exemples
awk '{ print $1 }'        # Première colonne
awk -F: '{ print $1 }'    # Avec séparateur
awk '$3 > 100 { print }' # Avec condition
```

## Partie 5 : Scripting Bash

[La documentation complète](https://doc.ubuntu-fr.org/tutoriel/script_shell)

### Variables
```bash
# Définition
nom="valeur"
nombre=42

# Utilisation
echo $nom
echo ${nom}

# Variables spéciales
$0  # Nom du script
$1  # Premier argument
$#  # Nombre d'arguments
$@  # Tous les arguments
```

### Conditions
```bash
# Structure if
if [ condition ]; then
    commandes
elif [ autre_condition ]; then
    commandes
else
    commandes
fi

# Tests courants
[ -f fichier ]  # Existe et est un fichier
[ -d dossier ]  # Existe et est un dossier
[ $a -eq $b ]   # Égalité numérique
[ "$a" = "$b" ] # Égalité chaînes
```

### Boucles
```bash
# Boucle for
for i in {1..5}; do
    echo $i
done

# Boucle while
while [ condition ]; do
    commandes
done

# Lecture utilisateur
read -p "Question : " reponse
```
