#!/bin/bash

# Simulateur de hacker - Juste pour le fun !

echo "Initialisation du piratage en cours..."
sleep 2

# Animation de chargement
for i in {1..5}; do
    echo -n "Chargement"
    for j in {1..3}; do
        echo -n "."
        sleep 0.5
    done
    echo ""
done

# Affichage des "commandes" dans l'ordre
echo "Connexion au serveur sécurisé..."
sleep 1
echo "Accès SSH root@192.168.0.42"  # On garde une adresse fixe ici pour l'effet
sleep 1

# Liste des commandes à afficher dans l'ordre
COMMANDS=(
    "nmap -A -T4 192.168.0.42"
    "sudo rm -rf / --no-preserve-root "
    "hack_the_planet --brute-force --no-detection"
    "upload virus.exe to Pentagon server"
    "git clone https://github.com/anonymous/illuminati.git"
    "decrypt alien transmissions --verbose"
    "sudo make me a sandwich"
    "establish backdoor connection to NASA"
    "rm -rf /dev/brain"
    "mv /root /dev/null"
    "echo 'Hacking the Matrix... Done.'"
    "sudo apt install universe domination"
    "launch_ddos_attack_on_google"
    "ssh root@deathstar.empire"
    "compile_infinity_stones.c"
)

# Affichage des commandes dans l'ordre
for cmd in "${COMMANDS[@]}"; do
    echo "Exécution de la commande : $cmd"
    sleep 0.5
done

# Liste des phrases humoristiques à afficher dans l'ordre
PHRASES=(
    "Best H4CK3RZ 2024"
    "Le gras c'est la vie"
    "Best promo du CESI qu'est-ce tu vas faire"
    "En route pour niquer des mères"
    "Best H4CK3RZ 2025 en vrai"
    "En vrai la raclette au micro-ondes... Ouais hein"
)

echo "Extraction de phrases secrètes en cours..."
sleep 2

# Affichage des phrases dans l'ordre
for phrase in "${PHRASES[@]}"; do
    echo "Phrase extraite : $phrase"
    sleep 1
done

echo "Piratage réussi !"
echo "Fermeture de la session dans 3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 1

echo "Session terminée."