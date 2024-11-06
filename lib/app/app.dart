import 'package:cinetopia/ui/screens/home_page.dart';
import 'package:flutter/material.dart';

class Cinetopia extends StatelessWidget {
  const Cinetopia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cinetopia",
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}