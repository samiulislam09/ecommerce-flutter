import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecefe8),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/headphone.png"),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Enjoy\nWorlds Best\nProducts",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () => {},
            child: Text(
              "Go",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
            shape: CircleBorder(),
          ),
        ),
      ),
    );
  }
}
