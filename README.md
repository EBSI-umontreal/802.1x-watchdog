# 802.1x-watchdog
 
# Description
Ce script vise à corriger un rare problème où le poste perd son authentification sur le réseau, car le supplicant 802.1x ne renégocie pas. La solution consiste alors à réinitialiser la connexion réseau.

# Installation
Exécuter le fichier `_install.bat` avec des droits d’administrateur local.
Une tâche planifiée sera créée pour exécuter le script à interval régulier.
Un fichier de journalisation est maintenu sur le poste pour analyser la stabilité de la connexion.

# Limitation
Ne fonctionne que sur une version française de Windows 10 et Windows 11 (au besoin changer la ligne 6 du fichier `802.1x-watchdog.ps1` pour l'adapter à une autre langue).

# Licence
https://creativecommons.org/licenses/by-nc/4.0/