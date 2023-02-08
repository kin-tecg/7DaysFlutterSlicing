import 'package:flutter/material.dart';
import 'package:tujuh_hari/pages/day3Bitcoin.dart';
import 'package:tujuh_hari/pages/day3Credit.dart';
import 'package:tujuh_hari/pages/day5Cafe.dart';
import 'package:tujuh_hari/pages/day6Upgrade.dart';
import 'package:tujuh_hari/theme.dart';

class Upgrade extends StatefulWidget {
  const Upgrade({Key? key}) : super(key: key);

  @override
  State<Upgrade> createState() => _UpgradeState();
}

class _UpgradeState extends State<Upgrade> {
  @override
  int currentIndex = 0;
  final screens = [
    Test(),
    Cafe(),
    Credit(),
    BitCoin(),
  ];


  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: UpgradeStrokeBorderColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: UpgradeGreyTextColor,
          iconSize: 30,
          showUnselectedLabels: false,
          showSelectedLabels: true,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Feed',),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',),

          ],
        ),
    );
  }
}
