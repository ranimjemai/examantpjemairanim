import 'package:flutter/material.dart';
import 'package:atlas_geo_ranim/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas Géographique',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WelcomePage(), // ← Point crucial : utiliser WelcomePage
      debugShowCheckedModeBanner: false,
    );
  }
}
