import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final double height;
  final double weight;
  final bool isMale;

  const BmiResultScreen({
    super.key,
    required this.height,
    required this.weight,
    required this.isMale,
  });

  double calculateBmi() => weight / ((height / 100) * (height / 100));

  String getCategory(double bmi) {
    if (bmi < 18.5) return "Underweight";
    if (bmi < 25.0) return "Normal";
    if (bmi < 30.0) return "Overweight";
    return "Obese";
  }

  Color getColor(String category) {
    switch (category) {
      case "Underweight":
        return Colors.yellow;
      case "Normal":
        return Colors.green;
      case "Overweight":
        return Colors.orange;
      default:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bmi = calculateBmi();
    final category = getCategory(bmi);
    final color = getColor(category);

    return Scaffold(
      appBar: AppBar(title: const Text('BMI Result - Nature')),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4CAF50), Color(0xFF2E7D32)], // hijau daun
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("BMI Anda", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
              Text(bmi.toStringAsFixed(1), style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: color)),
              const SizedBox(height: 16),
              Text("Kategori: $category", style: TextStyle(fontSize: 22, color: color)),
              const SizedBox(height: 20),
              Icon(Icons.eco, size: 60, color: color), // ikon daun
            ],
          ),
        ),
      ),
    );
  }
}
