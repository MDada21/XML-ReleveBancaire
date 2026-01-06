# Gestion de Relevés Bancaires (XML/XSLT)

Ce projet propose une solution complète pour la structuration, la validation et l'affichage de relevés bancaires à partir de fichiers XML. Il inclut des définitions de structure (DTD/XSD) et des feuilles de style pour la transformation HTML (XSLT).

## 📂 Structure du Projet

* `/xml` : Contient les fichiers de données (releve.xml).
* `/dtd` : Définition de Type de Document pour la validation de structure simple.
* `/xsd` : Schéma XML pour une validation rigoureuse des types de données (dates, montants).
* `/xsl` : Feuilles de style pour la transformation et le rendu HTML.

## 🛠️ Composants Techniques

### 1. Validation de données
Le projet utilise deux méthodes de validation :
* **DTD (`releve.dtd`)** : Définit la hiérarchie des éléments (`releve`, `operations`, `operation`).
* **XSD (`releve.xsd`)** : Assure que les montants sont numériques et que les dates respectent le format ISO `YYYY-MM-DD`.

### 2. Transformation et Affichage (XSLT)
Deux feuilles de style sont disponibles :
* **Affichage Complet** : Génère un tableau récapitulatif avec le calcul automatique des totaux de débit et de crédit.
* **Filtre Crédit** : Affiche uniquement les opérations de type "CREDIT".
