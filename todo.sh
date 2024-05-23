#!/bin/bash

# Fonction pour afficher l'aide
afficher_aide() {
    echo "Usage: todo [options]"
    echo "Options:"
    echo "  create   Créer une nouvelle tâche."
    echo "  update   Mettre à jour une tâche existante."
    echo "  delete   Supprimer une tâche."
    echo "  show     Afficher les informations d'une tâche."
    echo "  list     Afficher les tâches pour une journée donnée."
    echo "  search   Rechercher une tâche par titre."
    echo "  help     Afficher cette aide."
}

# Fonction pour créer une nouvelle tâche
creer_tache() {
    echo "Entrez les informations de la nouvelle tâche :"
    read -p "Titre (obligatoire) : " titre
if [ -z "$titre" ]; then
        echo "Le titre est obligatoire."
        exit 1
    fi

    read -p "Description : " description
    read -p "Emplacement : " emplacement
    read -p "Date d'échéance (format YYYY-MM-DD) : " date_echeance
    read -p "Heure d'échéance (format HH:MM) : " heure_echeance
# Ici, nous allons simplement afficher les détails de la tâche
    echo "Tâche créée avec succès :"
    echo "Titre : $titre"
    echo "Description : $description"
    echo "Emplacement : $emplacement"
    echo "Date d'échéance : $date_echeance"
    echo "Heure d'échéance : $heure_echeance"
}

# Fonction pour mettre à jour une tâche
mettre_a_jour_tache() {
    echo "Fonctionnalité en cours de développement."
}

# Fonction pour supprimer une tâche
supprimer_tache() {
    echo "Fonctionnalité en cours de développement."
}
# Fonction pour afficher les informations d'une tâche
afficher_infos_tache() {
    echo "Fonctionnalité en cours de développement."
}

# Fonction pour afficher les tâches pour une journée donnée
afficher_taches_jour() {
    echo "Fonctionnalité en cours de développement."
}
# Fonction pour rechercher une tâche par titre
rechercher_tache_par_titre() {
    echo "Fonctionnalité en cours de développement."
}

# Vérifier s'il y a des arguments
if [ $# -eq 0 ]; then
    # Afficher les tâches pour la journée actuelle
    afficher_taches_jour
    exit 0
fi
# Analyser les arguments
case $1 in
    "create")
        creer_tache
        ;;
    "update")
        mettre_a_jour_tache
        ;;
    "delete")
        supprimer_tache
        ;;
    "show")
        afficher_infos_tache
        ;;
    "list")
        afficher_taches_jour
        ;;
    "search")
      ;;
    "help")
        afficher_aide
        ;;
    *)
        echo "Option invalide : $1"
        echo "Utilisez 'todo help' pour obtenir de l'aide."
        exit 1
   ;;
esac

exit 0