import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hi ! Welcome'),),
      body: const Text('THIS IS BODY'),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          label: 'Home' ,
          icon: Icon(Icons.home),
          ),
       BottomNavigationBarItem(
          label: 'Settings' ,
          icon: Icon(Icons.settings),
          ),
          BottomNavigationBarItem(
          label: 'Search' ,
          icon: Icon(Icons.search),
          ),
      ],),
    );
  }
}