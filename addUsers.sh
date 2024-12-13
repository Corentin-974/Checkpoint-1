#!/bin/bash

# Let's gooo



#Vérification si des arguments ont été rentrés

if [ $# -eq 0 ]; then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script" # Affiche la phrase
    exit 1
fi

# Pour Parcourir tous les noms d'utilisateurs en arguments 
for nom_utilisateur in "$@"; do
    
    if id "$nom_utilisateur" &>/dev/null; then   # On Vérifie si le nom d'utilisateur existe déjà
        echo "L'utilisateur $nom_utilisateur existe déjà"  # Affiche la phrase
    else
        useradd "$nom_utilisateur"  # Création de l'utilisateur
        
        if [ $? -eq 0 ]; then  # Vérification de la création
            echo "L'utilisateur $nom_utilisateur a été créé"  # Affiche la phrase
        else
            echo "Erreur à la création de l'utilisateur $nom_utilisateur"  # Affiche la phrase
        fi
    fi
done
