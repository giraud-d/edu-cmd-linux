# Partie 1 : Révision du J1

## Questions

Je vous suggère de n'éxécuter uniquement que les commandes que vous comprenez :

* Que fait la commande `cd ..` ?
* Que fait la commande `cd -` ?
* Que fait la commande `ls /home` ?
* Que fait la commande `ls -R /` ?
* Que fait la commande `rm -rf /` ?

Vous pouvez utiliser un editeur de texte pour répondre à ces questions.

Path du fichier : `/home/<user>/CESI/2024-cmd-linux/exercices/J2/reponses`

* Comment protéger votre fichier pour éviter qu'il soit modifié ?

## Création d'un script

Creer le script `J2-P1-exercise.sh` qui permet de réaliser les tâches suivantes :

Créer les fichiers et dossier suivants :
* `/home/<user>/CESI/2024-cmd-linux/exercices/J2/instructions` (as a file)
* `/home/<user>/CESI/2024-cmd-linux/exercices/J2/my-list-of-cmd` (as a file)
* `/home/<user>/CESI/2024-cmd-linux/exercices/J2/data`
* `/home/<user>/CESI/2024-cmd-linux/note-pad/cmd-utils-J2`
(as a file, avec le contenu "Hello World!" et des droits d'écriture pour le user, le group et le public)
* `/home/<user>/CESI/2024-cmd-linux/note-pad/personal-notes.txt` (as a file)

## Bonus : Blinder mon script

Je vais essayer de faire n'importe quoi avec votre script.

> Indice : Chemin absolu VS Chemain relatif

## Bonus : Exécuter les script de la dernière fois

[] git clone de mon repo et exe des fichiers de scripts


# Partie 2 : Les redirections

## S'exercer

* Créer un fichier `toto` qui contient le terme suivant `Hello World!` (indo `echo`)
* Créer un fichier `toto` qui contient le terme suivant `Hello World! Bonjour` sans écrire dans votre commande le terme `Hello World`
* Créer un fichier `root_dir` qui contient la liste de tout les fichiers et dossier contenu à la racine du système
* Créer un fichier `history_mkdir` qui liste le nombre de fois que vous avez utiliser la commande `mkdir`
* Combien y a t'il de caractère dans le fichier `toto` (vous devez utiliser le fichier en STDIN).

## Bonus

* Impressionner moi avec des redirections et des pipes.
* Impressionner moi avec des redirections et les pipes pour faire quelque chose de pourtant très simple

# Partie Bonus : .bashrc

[] Lien article Bashrc source

# Partie 3 : Avec des fichiers de logs

* Faire un cat sur un fichier super long

https://www.malekal.com/comment-trouver-fichiers-volumineux-linux/
* sudo du -a /home/ | sort -n | tail -10


# Partie 4 : Projets de groupe

