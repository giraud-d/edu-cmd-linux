# J1

Le vendredi 11 octobre du 8h30 à 16h30



## Sujets abordés

- Historique / position sur le marché
- Concepts de base : file/user/data/processus/droits



## Partie 1 : Intro + setup terminal

Pour aller plus loin ⇒ https://iamjmm.ovh/NSI/os/site/index.html

> Sur quelles machines peut on retrouver des OS Linux ?
> 
> - Premier OS du monde (serveur)

> Est ce que vous connaissez des distributions ?
> 

> Est ce que les machines Linux on un serveur X (GUI) ?
> 

> Vous qu’est ce que vous pouvez faire pour avoir accès à un terminal ?
> 
- [ ]  **TODO** S’inscrire et se connecter au service de terminal en ligne



## Partie 2 : Navigation

*Pour les personnes qui savent et maitrise défi m’apprendre quelque chose sur les commandes étudiés (man, historique)*

---

> C’est quoi l’arborescence des fichiers ?
> 
- [ ]  `pwd`
- [ ]  `ls`
- [ ]  `cd <dossier> && cd ..`
- [ ]  `cd <dossier1>/<dossier2> && cd ../..`
- [ ]  `cd / && cd ~`

---

<aside>
💡Tout est fichier (ou processus)

- “Les dossiers”
- Les fichiers
- La swap
- La config
- les passwords
- …
</aside>

- [ ]  `man ls && ls -la`
- [ ]  `sudo apt install tree`
- [ ]  `man tree && tree —help && tree -L 1 /`



## Partie 3 : Création/Suppression

*Pour les personnes qui savent et maitrise défi m’apprendre quelque chose sur les commandes étudiés + partie bonus*

---

- [ ]  `mkdir <dossier> && man mkdir`
- [ ]  `touch myFile && man touch`

<aside>
🚨 rm -rf /
</aside>


- [ ]  `rm <file> && rm -r <folder>`



## Partie 4 : Les droits

*Pour les personnes qui savent et maitrise défi m’apprendre quelque chose sur les commandes étudiés + partie bonus*

---

<aside>
🚨 ls -la ⇒ 10 caractères

- directory, regular, symbolic links
- 3 : r, w, execute 421
- user, group, others (public)
</aside>


http://iamjmm.ovh/NSI/permissions/site/index.html



## Partie Bonus :

---

- [ ]  `history`
- [ ]  `man ln`
- [ ]  Trouver de la matière pour les plus avancé



## Partie Ultra Bonus : Architecture avancé

---

- [ ]  `tree -L 1 /`
- [ ]  `ls -la /`
- /bin
Ce n’est pas la corbeille. Les binaires (aussi a d'autres endroits)
- /boot
Pour démarrer votre partition
- /dev
Pour les devices (gen au boot, il y auras ta clé usb)
- /etc
Historiquement voulait dire “et cetera”.
Aujourd’hui “Evrything to configure” (nom du système, les users, les pwd, les points de montage des partitions
- /home
Les fichiers utilisateurs. Un dossier par user
- /lib
Pour les lib (il y en a dans d’autres dossiers).
- /media
La où sont monté les devices externes. Dossier plus récent
- /mnt
Lui historique. Pour monter les devices
- /opt
Pour les softw que vous compiler (/opt/bin & /opt/lib)
- /proc
information à propos du CPU, du kernel, …
- /root
Le home du user root
- /run
Nouveau, Le système l’utilise pour stocker des datas
- /sbin
Les binaires pour les super users
- /usr
Historiquement le dossier du user.
Un peu le bizare des binaires qui sont plutôt installé par le user dans /usr/bin
Mais aujourd’hui beaucoup de distro mettent tout dans /user/bin avec un lien symbolique de /bin vers ce dossier
- /srv
Pour les serveurs /src/http /srv/www ou /srv/ftp
- /sys
Dossier virtuel, contient aussi des informations sur les devices
- /tmp
Pour les donnés temporaire. On peut l’utiliser
- /var
Historiquement pour les variables qui changait souvent.
Aujourd’hui pour du log /var/log

Et certaines distributions font à leurs sauce : ex Ubuntu (20 ou 22) avec snap
