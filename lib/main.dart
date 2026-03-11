import 'package:flutter/material.dart';
import 'package:introduction/Screens/google_map.dart';
import 'package:introduction/Screens/main_Screen.dart';


void main() {
  runApp(const MyIntroSite());
}

class MyIntroSite extends StatelessWidget {
  const MyIntroSite({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}