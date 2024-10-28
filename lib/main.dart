import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator BMI',
      theme: ThemeData(),
      home: const ResultScreen()
    );
  }
}
