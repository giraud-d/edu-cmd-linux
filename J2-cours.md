# J2

Le vendredi 8 novembre du 8h30 à 16h30



## Sujets a aborder (fiche pédagogique) 

- Commandes liées aux concepts de base
- Redirection des entrées / sorties

## Partie 1 : Révision du J1

Voir la fichier `J1-cours.md` pour les détails.

## Partie 2 : Les redirections

![Les redirections](assets/redirection-from-ryanstutorials.net.png)

*Source : [Piping and Redirection](https://ryanstutorials.net/linuxtutorial/piping.php)*

> Quand dans mon terminal je fais la commande `ls`.
> 
> Le résultat est envoyé vers STDOUT (Standard Output) et mon terminal affiche le STDOUT.
> 
> C'est un compartement par défault, c'ets la même chose pour les erreurs (STDERR).

### STDOUT : Les redirections vers un fichier : > et >>

La redirection `>` permet de rediriger le STDOUT vers un fichier.

> Quand dans mon terminal je fais la commande `ls > my_file`.
>
> Le résultat est envoyé vers STDOUT (Standard Output).
>
> Dans ce cas là le résultat de la commande sera contenu dans mon fichier (je peux vérifier avec un `cat my_file`.

La redirection de base va "écraser mon fichier".

Si je veux ajouter le résultat à la fin de mon fichier je peux utiliser `>>`.

### STDIN : Les redirections depuis un fichier : <

> La commande `wc` (aconyme de word count) permet de compter le nombre de mots dans un fichier.
> 
> ![WC input](assets/wc-stdin-input.png)
>
> Ici j'ai taper `wc` puis ENTRER
> 
> Mon curseur est en attente d'une entrée (je peux taper du texte)
> 
> Ce texte sera envoyé vers STDIN (Standard Input) de la commande `wc`.
> 
> Pour terminer l'entrée je fais `CTRL + D` (EOF).
> 
> ![WC res](assets/wc-stdin-res.png)

Je peux rediriger un fichier vers STDIN avec `<`
ou via certaine commande qui accepte que que je tape dans le terminal le STDIN.

> Donc si je fais un `wc < my_file` j'aurais (presque) le même résultat que `wc my_file`.

### Les pipes : |

Les pipes permettent de rediriger le STDOUT d'une commande vers le STDIN d'une autre commande.

> Quand dans mon terminal je fais la commande `ls | wc`.
> 
> Le résultat de `ls` est envoyé vers STDOUT (Standard Output).
> 
> Ce résultat est envoyé vers STDIN (Standard Input) de la commande `wc`.
> 
> `wc` va compter le nombre de lignes, de mots et de caractères.
>
> ![ls pipe wc](assets/ls-pipe-wc.png)

Les pipes peuvent être chainés.

> Que fais cette commande `history | grep cd | wc -w` ?

### Bonus : Les autres sorties

- 2> : STDERR
- 2>> : STDERR (append)
- &> : STDOUT et STDERR
- &>> : STDOUT et STDERR (append)

Append signifie que je vais ajouter le résultat à la fin du fichier.

## Partie 3 : Commandes utiles pour parcourir de gros fichiers

- `tail` : Affiche les dernières lignes d'un fichier
- `head` : Affiche les premières lignes d'un fichier
- `less` : Affiche le contenu d'un fichier page par page
- `grep` : Permet de rechercher des mots dans un fichier
- `find` : Permet de rechercher des fichiers
- `sort` : Permet de trier les lignes d'un fichier
- `uniq` : Permet de supprimer les doublons
- `cut` : Permet de découper les lignes
- `awk` : Permet de traiter des colonnes
- `wc` : Permet de compter les mots
- `diff` : Permet de comparer des fichiers

Toutes ces commandes peuvent avoir des arguments. Utiiser `man` pour lire la documenation

Toutes ces commandes peuvent être combinées avec les redirections et les pipes.

A minima il est bien de savoir utilisers les commandes suivantes `wc`, `grep` et/ou `find` et/ou `awk`.