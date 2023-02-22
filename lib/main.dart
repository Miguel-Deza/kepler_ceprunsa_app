import 'package:flutter/material.dart';
import 'package:kepler_ceprunsa/screens/form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kepler app',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: FormPage(),
    );
  }
}
