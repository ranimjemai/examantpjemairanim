# Atlas Géographique

Atlas Géographique est une application Flutter qui permet de découvrir les pays du monde, d'afficher des informations détaillées sur chaque pays et de naviguer facilement entre les pages.

---

##  Description

- **Page d'accueil** (`WelcomePage`) avec un bouton pour entrer dans la liste des pays  
- **Liste des pays** (`CountriesPage`) affichant tous les pays depuis un fichier de données local  
- **Page de détails** (`CountryDetailPage`) avec informations complètes sur chaque pays  
- **Page "À propos"** (`AboutPage`) avec des informations sur l'application  
- **Menu latéral** (Drawer) pour naviguer entre les pages principales

---

##  Fonctionnalités

-  Interface utilisateur intuitive et responsive
- Navigation fluide entre les pages
- Affichage des drapeaux et photos des pays
-  Informations détaillées (capitale, population, superficie, langue)
-  Menu latéral avec options de navigation
-  Support web et desktop

---

##  Aperçu de l'application

**

---

##  Prérequis

- [Flutter](https://flutter.dev/docs/get-started/install) >= 3.9  
- SDK Dart >= 3.0.0  
- Navigateur web moderne (Chrome, Edge, Firefox)  
- Optionnel : Android Studio ou VS Code pour l'édition et le debug

---

##  Installation et Lancement



1. **Accédez au dossier du projet** :

cd atlas_geo_ranim
## Installez les dépendances :
flutter pub get
## Lancez l'application :
flutter run
## Choisissez la plateforme :
Chrome (web)

Edge (web)

Windows (desktop)

 2. **Structure du projet**
atlas_geo_ranim/
├── lib/
│   ├── main.dart                 # Point d'entrée de l'application
│   ├── data/
│   │   └── pays_data.dart        # Modèle et données des pays
│   └── pages/
│       ├── welcome_page.dart     # Page d'accueil
│       ├── countries_page.dart   # Liste des pays
│       ├── country_detail_page.dart # Détails d'un pays
│       └── about_page.dart       # Page À propos
├── assets/
│   └── images/
│       ├── globe.png            # Image du globe terrestre
│       ├── flags/               # Dossiers des drapeaux
│       └── countries/           # Dossiers des photos de pays
├── test/
│   └── widget_test.dart         # Tests de l'application
├── pubspec.yaml                 # Configuration et dépendances
└── README.md                    # Ce fichier