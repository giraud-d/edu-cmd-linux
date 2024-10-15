#!/bin/bash

# Fonction pour effet d'écriture progressive (vitesse augmentée)
effet_ecriture() {
    local texte="$1"
    for (( i=0; i<${#texte}; i++ )); do
        echo -n "${texte:$i:1}"
        sleep 0.03  # Vitesse légèrement augmentée
    done
    echo
}

# Fonction pour afficher du texte en rouge vif et en gras
afficher_texte_rouge_vif() {
    local texte="$1"
    echo -e "\e[1;31m$texte\e[0m"  # 1 = gras, 31 = rouge vif, 0m = réinitialiser
}

# Fonction pour le délai d'inactivité (choix caché)
choix_cache_si_inactif() {
    local duree_inactif=5  # Temps avant d'activer le choix caché (5 secondes)
    read -t "$duree_inactif" -p "Entrez le numéro de votre choix (1/2/3) : " choix_evenement
    if [[ -z "$choix_evenement" ]]; then
        # Choix caché : mort atroce si le joueur prend trop de temps
        afficher_texte_rouge_vif "Vous hésitez trop longtemps..."
        sleep 1
        afficher_texte_rouge_vif "Une flèche d'Orc traverse l'air..."
        sleep 1
        afficher_texte_rouge_vif "Elle se plante directement dans votre gorge, vous étouffant lentement."
        sleep 1
        afficher_texte_rouge_vif "Votre vision se trouble alors que vous vous effondrez au sol..."
        sleep 2
        afficher_texte_rouge_vif "Vous êtes mort de manière atroce."
        exit 1
    fi
}

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

demander_pseudo() {
    read -p "Avant de commencer, quel est ton pseudo, aventurier ? " pseudo
}

histoire_intro() {
    effet_ecriture "Tu es né dans la bourgade de Valdorin, au sein de la famille Thalor."
    sleep 1
    effet_ecriture "Ton père, un brave guerrier, a perdu la vie lors d'une attaque d'une armée d'Orcs il y a quelques mois."
    sleep 1
    effet_ecriture "Aujourd'hui, il est temps pour toi d'aller de l'avant et de venger ton père."
    sleep 1
}

choisir_action() {
    effet_ecriture "Que souhaites-tu faire maintenant ?"
    effet_ecriture "1. S'entraîner"
    effet_ecriture "2. Partir en aventure"
    effet_ecriture "3. Dormir"

    read -p "Entrez le numéro de votre choix (1/2/3) : " action
    case $action in
        1)
            action_precedente="entraine"
            entrainement
            ;;
        2)
            action_precedente="aventure"
            partir_aventure
            ;;
        3)
            action_precedente="dormi"
            dormir
            ;;
        *)
            effet_ecriture "Choix invalide. Veuillez choisir 1, 2 ou 3."
            choisir_action
            ;;
    esac
}

entrainement() {
    if [[ $classe == "Guerrier" ]]; then
        effet_ecriture "$pseudo s'entraîne dur, frappant de lourds sacs de sable avec une force impressionnante."
        effet_ecriture "Ses bras deviennent plus puissants à chaque coup, et bientôt, il pourra soulever des montagnes."
    elif [[ $classe == "Mage" ]]; then
        effet_ecriture "$pseudo passe des heures à étudier d'anciens grimoires, maîtrisant de nouveaux sorts."
        effet_ecriture "Sa maîtrise de la magie devient redoutable, et il peut désormais contrôler les éléments."
    elif [[ $classe == "Archer" ]]; then
        effet_ecriture "$pseudo perfectionne son tir à l'arc, frappant des cibles éloignées avec une précision incroyable."
        effet_ecriture "Chaque flèche tirée par $pseudo atteint son but avec une précision mortelle."
    fi
    effet_ecriture "$pseudo se sent plus fort et plus prêt que jamais pour les défis à venir."
}

partir_aventure() {
    effet_ecriture "$pseudo décide de partir à l'aventure et quitte le village."
    sleep 1
    effet_ecriture "Après plusieurs heures de marche, $pseudo rencontre un marchand ambulant."
    effet_ecriture "Le marchand propose plusieurs articles intéressants :"
    effet_ecriture "- Une épée d'acier : 100 pièces d'or"
    effet_ecriture "- Un bâton magique : 120 pièces d'or"
    effet_ecriture "- Un arc en bois : 80 pièces d'or"
    sleep 1
    effet_ecriture "Malheureusement, $pseudo n'a pas assez d'or pour acheter quoi que ce soit."
    effet_ecriture "Le marchand salue $pseudo et reprend sa route."
    
    sleep 2
    effet_ecriture "Continuant son chemin, $pseudo croise une mystérieuse voyageuse nommée Elaria."
    effet_ecriture "Elaria parle des dangers des montagnes au nord, mais aussi de trésors cachés."
    effet_ecriture "Elle souhaite bonne chance à $pseudo, puis disparaît dans la forêt dense."
    
    sleep 1
    effet_ecriture "Fatigué après cette journée d'aventure, $pseudo décide de rentrer au village."
    effet_ecriture "$pseudo s'effondre sur son lit et s'endort profondément."
}

dormir() {
    effet_ecriture "La nuit est paisible dans le village de Valdorin."
    effet_ecriture "Le vent souffle doucement à travers les arbres, apportant une fraîcheur agréable."
    sleep 2
    effet_ecriture "$pseudo se glisse sous ses couvertures, bercé par le calme de la nuit."
    effet_ecriture "Tu t'endors paisiblement, rêvant des aventures qui t'attendent."
    sleep 1
    effet_ecriture "Le lendemain matin, tu te réveilles en pleine forme, prêt pour une nouvelle journée."
}

evenement_aleatoire() {
    # Délai de 2 secondes avant de déclencher l'événement
    sleep 2
    # Texte en rouge vif pour indiquer l'attaque
    afficher_texte_rouge_vif "Soudain, une terrible nouvelle frappe le village de Valdorin."
    afficher_texte_rouge_vif "Une armée d'Orcs attaque à l'aube, et tu dois prendre une décision rapide !"
    sleep 1
    effet_ecriture "Que fais-tu ?"
    effet_ecriture "1. Tu te précipites pour défendre le village."
    effet_ecriture "2. Tu t'enfuis vers les bois pour te cacher."
    effet_ecriture "3. Tu restes sur place, t'attendant au pire."

    # Appel de la fonction pour le choix avec délai d'inactivité
    choix_cache_si_inactif

    case $choix_evenement in
        1)
            if [[ $action_precedente == "entraine" ]]; then
                effet_ecriture "Grâce à ton entraînement rigoureux, tu combats vaillamment et repousses plusieurs Orcs."
                effet_ecriture "Le village te doit la vie et te remercie pour ton courage !"
            elif [[ $action_precedente == "aventure" ]]; then
                effet_ecriture "Tu es épuisé de ton aventure, mais tu parviens tout de même à te battre."
                effet_ecriture "Même si tu n'es pas en pleine forme, tu réussis à sauver plusieurs villageois."
            elif [[ $action_precedente == "dormi" ]]; then
                effet_ecriture "Reposé, tu te lances dans la bataille avec vigueur."
                effet_ecriture "Tu te bats courageusement, mais le nombre d'Orcs est trop important. Heureusement, tu es indemne."
            fi
            ;;
        2)
            if [[ $action_precedente == "entraine" ]]; then
                effet_ecriture "Bien que tu sois fort, tu choisis de te cacher dans les bois."
                effet_ecriture "Tu évites les Orcs, mais le village souffre sans ton aide."
            elif [[ $action_precedente == "aventure" ]]; then
                effet_ecriture "Trop fatigué pour combattre ou fuir, tu restes sur place. Les Orcs te capturent, mais tu parviens à négocier ta libération."
                effet_ecriture "Le village souffre des pertes, mais ta diplomatie te sauve."
            elif [[ $action_precedente == "dormi" ]]; then
                effet_ecriture "Reposé, tu restes calme face au danger. Les Orcs t'ignorent, croyant que tu n'es pas une menace."
                effet_ecriture "Le village est attaqué, mais tu es indemne. Cependant, certains villageois te blâment pour ton inaction."
            fi
            ;;
        3)
            effet_ecriture "Tu restes sur place, paralysé par la peur. Les Orcs envahissent le village..."
            if [[ $action_precedente == "entraine" ]]; then
                effet_ecriture "Grâce à ta force, tu parviens à t'échapper."
                effet_ecriture "Le village est détruit, mais tu survis et promets de reconstruire."
            elif [[ $action_precedente == "aventure" ]]; then
                effet_ecriture "Trop fatigué pour combattre ou fuir, tu restes sur place. Les Orcs te capturent, mais tu parviens à négocier ta libération."
                effet_ecriture "Le village souffre des pertes, mais ta diplomatie te sauve."
            elif [[ $action_precedente == "dormi" ]]; then
                effet_ecriture "Reposé, tu restes calme face au danger. Les Orcs t'ignorent, croyant que tu n'es pas une menace."
                effet_ecriture "Le village est attaqué, mais tu es indemne. Cependant, certains villageois te blâment pour ton inaction."
            fi
            ;;
        *)
            effet_ecriture "Choix invalide. Veuillez choisir 1, 2 ou 3."
            evenement_aleatoire
            ;;
    esac
}

# Début du jeu
introduction
choisir_classe
demander_pseudo
histoire_intro
choisir_action
evenement_aleatoire
