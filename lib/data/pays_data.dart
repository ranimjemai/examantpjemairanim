class Pays {
  final String nom;
  final String capitale;
  final int population;
  final int superficie;
  final String langue;
  final String drapeau;

  const Pays({
    required this.nom,
    required this.capitale,
    required this.population,
    required this.superficie,
    required this.langue,
    required this.drapeau,
  });
}

// Liste des pays avec leurs données
final List<Pays> paysList = [
  Pays(
    nom: 'Tunisie',
    capitale: 'Tunis',
    population: 11818618,
    superficie: 163610,
    langue: 'Arabe',
    drapeau: 'assets/images/tunisia_flag.png',
  ),
  Pays(
    nom: 'France',
    capitale: 'Paris',
    population: 67750000,
    superficie: 643801,
    langue: 'Français',
    drapeau: 'assets/images/france_flag.png',
  ),
  Pays(
    nom: 'États-Unis',
    capitale: 'Washington D.C.',
    population: 331000000,
    superficie: 9833517,
    langue: 'Anglais',
    drapeau: 'assets/images/usa_flag.png',
  ),
  Pays(
    nom: 'Allemagne',
    capitale: 'Berlin',
    population: 83200000,
    superficie: 357022,
    langue: 'Allemand',
    drapeau: 'assets/images/germany_flag.png',
  ),
  Pays(
    nom: 'Japon',
    capitale: 'Tokyo',
    population: 125800000,
    superficie: 377975,
    langue: 'Japonais',
    drapeau: 'assets/images/japan_flag.png',
  ),
];