import 'package:classassignment/add.dart';
import 'package:classassignment/details.dart';
import 'package:classassignment/home.dart';
import 'package:classassignment/login.dart';
import 'package:classassignment/profile.dart';
import 'package:classassignment/setting.dart';
import 'package:classassignment/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Pump loginPage', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: loginPage()));
  });

  testWidgets('Pump Signuppage', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Signuppage()));
  });

  testWidgets('Pump Home', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Home()));
  });

  testWidgets('Pump Profile', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Profile()));
  });

  testWidgets('Pump Details', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Details()));
  });

  testWidgets('Pump addPage', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: addPage()));
  });

  testWidgets('Pump settingPage', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: settingPage()));
  });
}
