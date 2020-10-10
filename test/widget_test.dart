// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_testing/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('Given user in home page When floating action button is pressed Then birthday is called', (WidgetTester tester) async {
    // ASSEMBLE
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: MyHomePage(),
        ),
      ),
    );

    final button = find.byType(FloatingActionButton);

    // ACT
    await tester.tap(button);
    await tester.pump();

    // ASSERT
    final text = find.text('Greta age 25');
    expect(text, findsOneWidget);
  });
}
