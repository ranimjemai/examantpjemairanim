import 'package:flutter/material.dart';
import '../data/pays_data.dart';

class CountryDetailPage extends StatelessWidget {
  final Pays country;

  const CountryDetailPage({
    super.key,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.nom),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Drapeau en grand format
            Container(
              width: 250,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                country.drapeau,
                width: 250,
                height: 150,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[200],
                    child: const Icon(Icons.flag, size: 60),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),

            // Informations du pays
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    _buildInfoRow('Capitale', country.capitale),
                    const SizedBox(height: 15),
                    _buildInfoRow('Population',
                        '${_formatPopulation(country.population)} habitants'),
                    const SizedBox(height: 15),
                    _buildInfoRow('Superficie',
                        '${_formatSuperficie(country.superficie)} km²'),
                    const SizedBox(height: 15),
                    _buildInfoRow('Langue officielle', country.langue),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(
            '$label :',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }

  String _formatPopulation(int population) {
    if (population >= 1000000) {
      return '${(population / 1000000).toStringAsFixed(1)} millions';
    } else if (population >= 1000) {
      return '${(population / 1000).toStringAsFixed(1)} mille';
    }
    return population.toString();
  }

  String _formatSuperficie(int superficie) {
    if (superficie >= 1000000) {
      return '${(superficie / 1000000).toStringAsFixed(1)} millions';
    } else if (superficie >= 1000) {
      return '${(superficie / 1000).toStringAsFixed(0)} mille';
    }
    return superficie.toString();
  }
}
