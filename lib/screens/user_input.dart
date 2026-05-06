import 'package:flutter/material.dart';
import '../widgets/gender_toggle.dart';
import 'bmi_result.dart';

class UserInputScreen extends StatefulWidget {
  const UserInputScreen({super.key});

  @override
  State<UserInputScreen> createState() => _UserInputScreenState();
}

class _UserInputScreenState extends State<UserInputScreen> {
  bool _isMale = true;
  double _height = 170.0;
  double _weight = 60.0;

  final _heightController = TextEditingController(text: "170");
  final _weightController = TextEditingController(text: "60");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI Calculator - Nature')),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF81C784), Color(0xFF388E3C)], // hijau gradasi
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            GenderToggle(isMale: _isMale, onChanged: (val) => setState(() => _isMale = val)),
            const SizedBox(height: 20),

            Text("Height (cm)", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
            TextField(
              controller: _heightController,
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Masukkan tinggi",
                labelStyle: TextStyle(color: Colors.white70),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2)),
              ),
              onChanged: (val) {
                final parsed = double.tryParse(val);
                if (parsed != null) setState(() => _height = parsed);
              },
            ),
            Slider(
              value: _height,
              min: 100.0,
              max: 250.0,
              activeColor: Colors.lightGreenAccent,
              onChanged: (value) {
                setState(() {
                  _height = value;
                  _heightController.text = value.toStringAsFixed(1);
                });
              },
            ),
            const SizedBox(height: 20),

            Text("Weight (kg)", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
            TextField(
              controller: _weightController,
              style: const TextStyle(color: Colors.white),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Masukkan berat",
                labelStyle: TextStyle(color: Colors.white70),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.lightGreenAccent, width: 2)),
              ),
              onChanged: (val) {
                final parsed = double.tryParse(val);
                if (parsed != null) setState(() => _weight = parsed);
              },
            ),
            Slider(
              value: _weight,
              min: 30.0,
              max: 150.0,
              activeColor: Colors.lightGreenAccent,
              onChanged: (value) {
                setState(() {
                  _weight = value;
                  _weightController.text = value.toStringAsFixed(1);
                });
              },
            ),
            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResultScreen(height: _height, weight: _weight, isMale: _isMale),
                  ),
                );
              },
              child: const Text("CALCULATE", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
