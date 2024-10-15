#!/bin/bash

# Script de bienvenue

echo "Bienvenue dans mon script bash !"
echo "Choisissez une action :"
echo "1. Afficher la date"
echo "2. Afficher l'heure"
echo "3. Afficher l'utilisateur actuel"
echo "4. Quitter"
echo "5. coac coac"
echo "6. tchou tchou"
echo "7. hollywood"
read -p "Entrez votre choix (1-7) : " choix

case $choix in
    1)
        echo "La date actuelle est : $(date +%d-%m-%Y)"
        ;;
    2)
        echo "L'heure actuelle est : $(date +%H:%M:%S)"
        ;;
    3)
        echo "L'utilisateur actuel est : $(whoami)"
        ;;
    4)
        echo "Au revoir !"
        exit 0
        ;;
    5)
	echo "-----------.--._.--.--------------"
	echo "----------( O     O )-------------"
	echo "----------/   . .   \-------------"
	echo "---------.'._______.'.------------"
	echo "--------/(           )\-----------"
	echo "------_/  \  \   /  /  \_---------"
	echo "---.~   '  \  \ /  /  '   ~.------"
	echo "---{    -.   \  V  /   .-    }----"
	echo "_ _'.    \  |  |  |  /    .'_ _---"
	echo ">_       _} |  |  | {_       _<---"
	echo "-/. - ~ ,_-'  .^.  '-_, ~ - .\----"
	echo "---------'-'|/   \|'-'------------"
	;;
    6)
	sl
	;;
    7)
	hollywood
	;;
    *)
        echo "Choix invalide. Veuillez réessayer."
        ;;

esac

