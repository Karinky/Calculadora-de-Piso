import 'package:floor_calculator/core/constants.dart';
import 'package:floor_calculator/pages/calculator_page.dart';
import 'package:flutter/material.dart';
import 'core/theme_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      theme: kAppTheme,
      home: CalculatorPage(),
    );
  }
}
