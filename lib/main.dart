import 'package:flutter/material.dart';
import 'src/homePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter pr8',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 241, 222, 14)),
        useMaterial3: true,
      ),
      home: HomePage()
    );
  }
}
