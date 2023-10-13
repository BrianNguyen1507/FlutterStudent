import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double _volume = 0.0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: const Text('Hi ! Welcome'),
        actions: <Widget>[
          //ICON BUTTON POP UP SNACKBAR
          IconButton(
            icon: const Icon(Icons.thumb_up_alt),
            tooltip: 'Like snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('LIKED')));
            },
          ),
          //ICON BUTTON INCREASE VOLUME
          IconButton(
            icon: const Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
            onPressed: () {
              setState(() {
                _volume += 10;
              });
            },
          ),
           Text('Volume : $_volume'),
        ],
      ),
      //BODY
      body:  Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
           const ElevatedButton(
            onPressed: null,
            child:  Text('Disabled'),
          ),
           const SizedBox(height: 20, width: 40,),
          ElevatedButton(
            onPressed:() { },
            child: const Text('Enabled'),
          ),
        ],
      ),
      //BOTTOM_NAV
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              semanticLabel: 'Text detail',
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
