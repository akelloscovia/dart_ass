import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:first_flutter_app/main.dart';

void main() {
  testWidgets('App loads without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Verify that splash screen appears (text or logo)
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
