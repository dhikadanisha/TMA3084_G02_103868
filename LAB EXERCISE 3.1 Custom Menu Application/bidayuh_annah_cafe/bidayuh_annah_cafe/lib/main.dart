import 'package:flutter/material.dart';

import 'menu_screen.dart';

void main() {
  runApp(const MenuApp());
}

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curry House Menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFD35400)),
        useMaterial3: true,
      ),
      home: const MenuScreen(),
    );
  }
}
