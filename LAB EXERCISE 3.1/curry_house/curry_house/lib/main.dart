// TMA3084 - Software Engineering Laboratory
// Lab Exercise 3.1 - Curry House
// Component: App Entry Point
// Developed by: Khanishya Dyana
// Matric Number: 102647

import 'package:flutter/material.dart';

import 'menu_screen.dart';

void main() {
  runApp(const CurryHouseApp());
}

class CurryHouseApp extends StatelessWidget {
  const CurryHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MenuScreen(),
    );
  }
}
