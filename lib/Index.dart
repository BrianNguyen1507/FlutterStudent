import 'package:demo_flutter/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter/SettingsPage.dart';
import 'package:demo_flutter/HomePage.dart';
import 'package:demo_flutter/ProfilePage.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int index = 0;

  static const List<Widget> pages = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(index),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          currentIndex: index,
          onTap: (value) => setState(() {
            index = value;
          }),
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(
                Icons.search,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(
                Icons.person,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(
                Icons.settings,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
