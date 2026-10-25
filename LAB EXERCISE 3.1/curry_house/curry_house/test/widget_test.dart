import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:curry_house/main.dart';

void main() {
  testWidgets('Curry House menu screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const CurryHouseApp());

    expect(find.text('Menu'), findsOneWidget);
    expect(find.text('Curries'), findsOneWidget);
    expect(find.text('Chicken Tikka Masala'), findsOneWidget);
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
