import 'package:flutter/material.dart';
import 'package:p1_donut_app_jahdiel_tzec/pages/home_page.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
    theme: ThemeData(
        tabBarTheme: const TabBarTheme(indicatorColor: Colors.pink))
        ),
      );
  }
}

