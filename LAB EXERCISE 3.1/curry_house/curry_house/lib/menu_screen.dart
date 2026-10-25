// TMA3084 - Software Engineering Laboratory
// Lab Exercise 3.1 - Curry House
// Component: Menu Screen
// Developed by: Dhika Danisha
// Matric Number: 103868
// Integration updates: Khanishya Dyana

import 'package:flutter/material.dart';

import 'menu_card.dart';

class MenuItem {
  final String name;
  final String description;
  final double price;
  final String category;
  final String imagePath;

  const MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.imagePath,
  });
}

const List<MenuItem> menuItems = [
  MenuItem(
    name: 'Chicken Tikka Masala',
    description: 'Grilled chicken in a creamy tomato gravy.',
    price: 18.90,
    category: 'Curries',
    imagePath: 'assets/images/Chicken_Tikka_Masala.jpg',
  ),
  MenuItem(
    name: 'Mutton Rogan Josh',
    description: 'Slow-cooked mutton with Kashmiri chilli and spices.',
    price: 22.90,
    category: 'Curries',
    imagePath: 'assets/images/muttonroganjosh.jpg',
  ),
  MenuItem(
    name: 'Palak Paneer',
    description: 'Cottage cheese cubes in a spiced spinach sauce.',
    price: 16.50,
    category: 'Curries',
    imagePath: 'assets/images/palak-paneer.jpg',
  ),
  MenuItem(
    name: 'Butter Naan',
    description: 'Soft tandoor-baked flatbread brushed with butter.',
    price: 4.50,
    category: 'Breads & Rice',
    imagePath: 'assets/images/butter_naan.jpg',
  ),
  MenuItem(
    name: 'Chicken Biryani',
    description: 'Fragrant basmati rice layered with spiced chicken.',
    price: 17.90,
    category: 'Breads & Rice',
    imagePath: 'assets/images/chickenbriyani.jpg',
  ),
  MenuItem(
    name: 'Mango Lassi',
    description: 'Chilled yoghurt drink blended with ripe mango.',
    price: 7.50,
    category: 'Drinks',
    imagePath: 'assets/images/Mango-Lassi.jpg',
  ),
  MenuItem(
    name: 'Masala Chai',
    description: 'Black tea simmered with milk, ginger and cardamom.',
    price: 4.00,
    category: 'Drinks',
    imagePath: 'assets/images/masalachai.jpg',
  ),
];

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = menuItems.map((e) => e.category).toSet().toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final category in categories) ...[
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                category,
                style: Theme.of(context).textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            for (final item in menuItems.where((e) => e.category == category))
              MenuCard(item: item),
          ],
        ],
      ),
    );
  }
}
