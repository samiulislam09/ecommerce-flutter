import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/orders.dart';
import 'package:ecommerce/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;

  late Home home;
  late Profile profile;
  late Orders orders;
  int currentTab = 0;

  @override
  void initState() {
    home = Home();
    profile = Profile();
    orders = Orders();
    pages = [home, orders, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 300),
          onTap: (int index) {
            setState(() {
              currentTab = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.person_outlined,
              color: Colors.white,
            ),
          ]),
      body: pages[currentTab],
    );
  }
}
