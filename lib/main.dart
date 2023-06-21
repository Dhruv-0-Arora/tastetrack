import 'package:flutter/material.dart';
import 'package:tastetrack/Login/welcome_page.dart';
import 'package:tastetrack/Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TasteTrack',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff8c9d32)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
