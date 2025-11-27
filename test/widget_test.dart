import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:atlas_geo_ranim/main.dart';

void main() {
  testWidgets('L\'application se lance correctement',
      (WidgetTester tester) async {
    // Lance l'application
    await tester.pumpWidget(const MyApp());

    // Vérifie que le texte "Atlas Géographique" est présent
    expect(find.text('Atlas Géographique'), findsOneWidget);

    // Vérifie que le bouton "Entrer" est présent sur la page d'accueil
    expect(find.text('Entrer'), findsOneWidget);
  });

  testWidgets('Bouton Entrer navigue vers CountriesPage',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Clique sur le bouton "Entrer"
    await tester.tap(find.text('Entrer'));
    await tester.pumpAndSettle(); // attend la navigation

    // Vérifie que la page CountriesPage s'affiche
    expect(find.text('Liste des Pays'), findsOneWidget);
  });
}
