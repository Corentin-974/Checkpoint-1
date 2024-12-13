#!/bin/bash

# Fonction menu principal
menu_principal() {
    local choix=$(dialog --stdout \
        --title "Menu Principal" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Gestion des utilisateurs" \
        2 "Gestion des ordinateurs" \
        3 "Quitter")

    case $choix in
        1)
            menu_util
            ;;
        2)
            menu_ordi
            ;;
        3)
            clear
            exit 0
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_principal
            ;;
    esac
}

# Fonction menu utilisateur
menu_util() {
    local choix=$(dialog --stdout \
        --title "Menu Utilisateur" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Informations utilisateur" \
        2 "Actions sur les utilisateurs" \
        3 "Retour au menu principal")
    case $choix in
        1)
            menu_info_user
            ;;
        2)
            menu_action
            ;;
        3)
            menu_principal
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_util
            ;;
    esac
}

# Menu Information Utilisateur
menu_info_user() {
    local choix=$(dialog --stdout \
        --title "Menu Informations Utilisateur" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Afficher la liste des groupes et utilisateurs" \
        2 "Historique d'activité utilisateur" \
        3 "Historique des dernières connexions" \
        4 "Retour au menu précédent")
    case $choix in
        1)
            dialog --msgbox "Fonction Afficher la liste des groupes et utilisateurs non implémentée." 8 40
            ;;
        2)
            dialog --msgbox "Fonction Historique d'activité utilisateur non implémentée." 8 40
            ;;
        3)
            dialog --msgbox "Fonction Historique des dernières connexions non implémentée." 8 40
            ;;
        4)
            menu_util
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_info_user
            ;;
    esac
}

# Fonction menu actions utilisateur
menu_action() {
    local choix=$(dialog --stdout \
        --title "Menu Actions" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Créer un compte utilisateur" \
        2 "Modifier un mot de passe" \
        3 "Supprimer un compte utilisateur" \
        4 "Modifier les droits" \
        5 "Retour au menu précédent")
    case $choix in
        1)
            gestion_user
            ;;
        2)
            modif_motdepasse
            ;;
        3)
            supp_user
            ;;
        4)
            modif_droit
            ;;
        5)
            menu_util
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_action
            ;;
    esac
}

# Menu Ordinateur
menu_ordi() {
    local choix=$(dialog --stdout \
        --title "Menu Ordinateur" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Obtenir des informations sur l'ordinateur" \
        2 "Effectuer des actions sur l'ordinateur" \
        3 "Retour au menu précédent")
    case $choix in
        1)
            menu_info_ordi
            ;;
        2)
            menu_action_ordi
            ;;
        3)
            menu_principal
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_ordi
            ;;
    esac
}

# Menu Information Ordinateur
menu_info_ordi() {
    local choix=$(dialog --stdout \
        --title "Menu Informations Ordinateur" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Version du système d'exploitation" \
        2 "Informations disque et RAM" \
        3 "Activité de l'ordinateur" \
        4 "Retour au menu précédent")
    case $choix in
        1)
            dialog --msgbox "Fonction Version du système d'exploitation non implémentée." 8 40
            ;;
        2)
            menu_disque_ram
            ;;
        3)
            menu_activite_ordi
            ;;
        4)
            menu_ordi
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_info_ordi
            ;;
    esac
}

# Menu Disque et RAM
menu_disque_ram() {
    local choix=$(dialog --stdout \
        --title "Menu Disque et RAM" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Afficher le nombre de disques" \
        2 "Afficher les informations de partition par disque" \
        3 "Afficher l'espace disque restant" \
        4 "Afficher l'état de la RAM" \
        5 "Retour au menu précédent")
    case $choix in
        1)
            dialog --msgbox "Fonction Afficher le nombre de disques non implémentée." 8 40
            ;;
        2)
            dialog --msgbox "Fonction Afficher les informations de partition par disque non implémentée." 8 40
            ;;
        3)
            dialog --msgbox "Fonction Afficher l'espace disque restant non implémentée." 8 40
            ;;
        4)
            dialog --msgbox "Fonction Afficher l'état de la RAM non implémentée." 8 40
            ;;
        5)
            menu_info_ordi
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_disque_ram
            ;;
    esac
}

# Menu Activité de l'Ordinateur
menu_activite_ordi() {
    local choix=$(dialog --stdout \
        --title "Menu Activité de l'Ordinateur" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Liste des applications/paquets installés" \
        2 "Liste des services en exécution" \
        3 "Retour au menu précédent")
    case $choix in
        1)
            dialog --msgbox "Fonction Liste des applications/paquets installés non implémentée." 8 40
            ;;
        2)
            dialog --msgbox "Fonction Liste des services en exécution non implémentée." 8 40
            ;;
        3)
            menu_info_ordi
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_activite_ordi
            ;;
    esac
}

# Menu Actions sur l'Ordinateur
menu_action_ordi() {
    local choix=$(dialog --stdout \
        --title "Menu Actions sur l'Ordinateur" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Gestion de l'alimentation" \
        2 "Gestion des répertoires" \
        3 "Gestion des logiciels" \
        4 "Mise à jour système" \
        5 "Retour au menu précédent")
    case $choix in
        1)
            menu_gestion_alimentation
            ;;
        2)
            menu_gestion_repertoires
            ;;
        3)
            menu_gestion_logiciels
            ;;
        4)
            dialog --msgbox "Fonction Mise à jour système non implémentée." 8 40
            ;;
        5)
            menu_ordi
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_action_ordi
            ;;
    esac
}

# Menu Gestion de l'Alimentation
menu_gestion_alimentation() {
    local choix=$(dialog --stdout \
        --title "Menu Gestion de l'Alimentation" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Arrêt de l'ordinateur" \
        2 "Redémarrer l'ordinateur" \
        3 "Mise en veille de l'ordinateur" \
        4 "Verrouiller l'ordinateur" \
        5 "Retour au menu précédent")
    case $choix in
        1)
            dialog --msgbox "Fonction Arrêt de l'ordinateur non implémentée." 8 40
            ;;
        2)
            dialog --msgbox "Fonction Redémarrer l'ordinateur non implémentée." 8 40
            ;;
        3)
            dialog --msgbox "Fonction Mise en veille non implémentée." 8 40
            ;;
        4)
            dialog --msgbox "Fonction Verrouiller l'ordinateur non implémentée." 8 40
            ;;
        5)
            menu_action_ordi
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_gestion_alimentation
            ;;
    esac
}

# Menu Gestion des Répertoires
menu_gestion_repertoires() {
    local choix=$(dialog --stdout \
        --title "Menu Gestion des Répertoires" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Création d'un répertoire" \
        2 "Modifier un répertoire" \
        3 "Supprimer un répertoire" \
        4 "Retour au menu précédent")
    case $choix in
        1)
            creer_repertoire
            ;;
        2)
            modifier_repertoire
            ;;
        3)
            supprimer_repertoire
            ;;
        4)
            menu_action_ordi
            ;;
        *)
            dialog --msgbox "Option invalide." 8 40
            menu_gestion_repertoires
            ;;
    esac
}

# Fonction pour créer un répertoire
creer_repertoire() {
    local chemin=$(dialog --stdout --inputbox "Entrez le chemin du répertoire à créer :" 8 40)
    if [ -n "$chemin" ]; then
        mkdir -p "$chemin" && \
            dialog --msgbox "Répertoire '$chemin' créé avec succès." 8 40 || \
            dialog --msgbox "Échec de la création du répertoire '$chemin'." 8 40
    else
        dialog --msgbox "Chemin non fourni." 8 40
    fi
    menu_gestion_repertoires
}

# Fonction pour modifier un répertoire
modifier_repertoire() {
    local ancien_chemin=$(dialog --stdout --inputbox "Entrez le chemin actuel du répertoire :" 8 40)
    local nouveau_chemin=$(dialog --stdout --inputbox "Entrez le nouveau chemin du répertoire :" 8 40)
    if [ -n "$ancien_chemin" ] && [ -n "$nouveau_chemin" ]; then
        mv "$ancien_chemin" "$nouveau_chemin" && \
            dialog --msgbox "Répertoire renommé de '$ancien_chemin' à '$nouveau_chemin' avec succès." 8 40 || \
            dialog --msgbox "Échec du renommage du répertoire." 8 40
    else
        dialog --msgbox "Chemins non fournis." 8 40
    fi
    menu_gestion_repertoires
}

# Fonction pour supprimer un répertoire
supprimer_repertoire() {
    local chemin=$(dialog --stdout --inputbox "Entrez le chemin du répertoire à supprimer :" 8 40)
    if [ -n "$chemin" ]; then
        rm -r "$chemin" && \
            dialog --msgbox "Répertoire '$chemin' supprimé avec succès." 8 40 || \
            dialog --msgbox "Échec de la suppression du répertoire '$chemin'." 8 40
    else
        dialog --msgbox "Chemin non fourni." 8 40
    fi
    menu_gestion_repertoires
}
# Menu Gestion des Logiciels
menu_gestion_logiciels() {
    local choix=$(dialog --stdout \
        --title "Menu Gestion des Logiciels" \
        --menu "Veuillez choisir une option :" 15 50 6 \
        1 "Installer un logiciel" \
        2 "Désinstaller un logiciel" \
        3 "Démarrer un logiciel" \
        4 "Arrêter un logiciel" \
        5 "Retour au menu précédent")
    case $choix in
  1)
        installer_logiciel
        ;;
    2)
        desinstaller_logiciel
        ;;
    3)
        demarrer_logiciel
        ;;
    4)
        arreter_logiciel
        ;;
    5)
        menu_action_ordi
        ;;
    *)
        dialog --msgbox "Option invalide." 8 40
        menu_gestion_logiciels
        ;;
    esac
}

# Fonction pour installer un logiciel
installer_logiciel() {
    local logiciel=$(dialog --stdout --inputbox "Entrez le nom du logiciel à installer :" 8 40)
    if [ -n "$logiciel" ]; then
        sudo apt install -y "$logiciel" && \
            dialog --msgbox "Logiciel '$logiciel' installé avec succès." 8 40 || \
            dialog --msgbox "Échec de l'installation de '$logiciel'." 8 40
    else
        dialog --msgbox "Nom du logiciel non fourni." 8 40
    fi
    menu_gestion_logiciels
}

# Fonction pour désinstaller un logiciel
desinstaller_logiciel() {
    local logiciel=$(dialog --stdout --inputbox "Entrez le nom du logiciel à désinstaller :" 8 40)
    if [ -n "$logiciel" ]; then
        sudo apt remove -y "$logiciel" && \
            dialog --msgbox "Logiciel '$logiciel' désinstallé avec succès." 8 40 || \
            dialog --msgbox "Échec de la désinstallation de '$logiciel'." 8 40
    else
        dialog --msgbox "Nom du logiciel non fourni." 8 40
    fi
    menu_gestion_logiciels
}

# Fonction pour démarrer un logiciel
demarrer_logiciel() {
    local logiciel=$(dialog --stdout --inputbox "Entrez le nom du logiciel à démarrer :" 8 40)
    if [ -n "$logiciel" ]; then
        nohup "$logiciel" > /dev/null 2>&1 &
        dialog --msgbox "Logiciel '$logiciel' démarré avec succès." 8 40
    else
        dialog --msgbox "Nom du logiciel non fourni." 8 40
    fi
    menu_gestion_logiciels
}

# Fonction pour arrêter un logiciel
arreter_logiciel() {
    local logiciel=$(dialog --stdout --inputbox "Entrez le nom du logiciel à arrêter :" 8 40)
    if [ -n "$logiciel" ]; then
        pkill "$logiciel" && \
            dialog --msgbox "Logiciel '$logiciel' arrêté avec succès." 8 40 || \
            dialog --msgbox "Échec de l'arrêt de '$logiciel'." 8 40
    else
        dialog --msgbox "Nom du logiciel non fourni." 8 40
    fi
    menu_gestion_logiciels
}

#appel du menu principal
menu_principal
