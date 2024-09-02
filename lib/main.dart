import 'package:ecommerce/pages/bottom_nav.dart';
import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: BottomNav(),
        ),
      ),
    );
  }
}
