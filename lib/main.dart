import 'package:flutter/material.dart';
import 'screens/user_input.dart'; // versi nature

void main() => runApp(const MyAppNature());

class MyAppNature extends StatelessWidget {
  const MyAppNature({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFE8F5E9), // hijau muda lembut
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
      home: const UserInputScreen(),
    );
  }
}
