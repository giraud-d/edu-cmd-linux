#!/bin/bash

#----------------------------------------------------------------------------------------------------

effet_ecriture() {
    local texte="$1"
    for (( i=0; i<${#texte}; i++ )); do
        echo -n "${texte:$i:1}"  # Afficher un caractère
        sleep 0.05  # Pause de 50 ms entre chaque caractère
    done
    echo  # Passer à la ligne suivante après le texte
}

#----------------------------------------------------------------------------------------------------
introduction() {
    effet_ecriture "Bienvenue dans le royaume d'Eldoria, un monde rempli de magie et de mystères."
    sleep 1
    effet_ecriture "Des créatures étranges rôdent dans les forêts, et des trésors cachés attendent d'être découverts."
    sleep 1
    effet_ecriture "Aujourd'hui, tu vas devenir un héros."
    sleep 1
    effet_ecriture "Choisis ta classe pour commencer ton aventure :"
    sleep 1
    effet_ecriture "1. Guerrier"
    effet_ecriture "2. Mage"
    effet_ecriture "3. Archer"
}

#----------------------------------------------------------------------------------------------------
choisir_classe() {
    read -p "Entrez le numéro de votre classe (1/2/3) : " choix
    case $choix in
        1)
            classe="Guerrier"
            effet_ecriture "Vous avez choisi le Guerrier ! Vous êtes fort et courageux."
            ;;
        2)
            classe="Mage"
            effet_ecriture "Vous avez choisi le Mage ! Vous maîtrisez les arts mystiques."
            ;;
        3)
            classe="Archer"
            effet_ecriture "Vous avez choisi l'Archer ! Vous êtes agile et précis."
            ;;
        *)
            effet_ecriture "Choix invalide. Veuillez choisir 1, 2 ou 3."
            choisir_classe
            ;;
    esac
}

#----------------------------------------------------------------------------------------------------
demander_pseudo() {
    read -p "Avant de commencer, quel est ton pseudo, aventurier ? " pseudo
}

#----------------------------------------------------------------------------------------------------
histoire_intro() {
    effet_ecriture "Tu es né dans la bourgade de Valdorin, au sein de la famille Thalor."
    sleep 1
    effet_ecriture "Ton père, un brave guerrier, a perdu la vie lors d'une attaque d'une armée d'Orcs il y a quelques mois."
    sleep 1
    effet_ecriture "Aujourd'hui, il est temps pour toi d'aller de l'avant et de venger ton père."
    sleep 1
}

#----------------------------------------------------------------------------------------------------
choisir_action() {
    effet_ecriture "Que souhaites-tu faire maintenant ?"
    effet_ecriture "1. S'entraîner"
    effet_ecriture "2. Partir en aventure"
    effet_ecriture "3. Dormir"

    read -p "Entrez le numéro de votre choix (1/2/3) : " action
    case $action in
        1)
            effet_ecriture "Tu décides de t'entraîner pour devenir plus fort. 🏋️‍♂️"
            ;;
        2)
            effet_ecriture "Tu es prêt à partir à l'aventure et à affronter les dangers d'Eldoria ! 🌍"
            ;;
        3)
            effet_ecriture "Tu choisis de dormir un peu pour te reposer avant l'aventure. 😴"
            ;;
        *)
            effet_ecriture "Choix invalide. Veuillez choisir 1, 2 ou 3."
            choisir_action
            ;;
    esac
}

#----------------------------------------------------------------------------------------------------
demarrer_jeu() {
    introduction
    demander_pseudo
    choisir_classe
    histoire_intro
    effet_ecriture "Prépare-toi à commencer ton aventure, cher $pseudo, en tant que $classe !"
    choisir_action
}

#----------------------------------------------------------------------------------------------------
demarrer_jeu
