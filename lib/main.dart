import 'package:flutter/material.dart';
import 'package:fundae/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark
      ),
    );
  }
}
