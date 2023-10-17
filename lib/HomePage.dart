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
      //APPBAR
      appBar: AppBar(
        title: const Text('Hi! Welcome'),
        actions: <Widget>[
          //ICON BUTTON POP UP SNACKBAR
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_sharp,
              size: 30,
            ),
            tooltip: 'Cart_view',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('LIKED')));
            },
          ),
          //ICON BUTTON INCREASE VOLUME
        ],
      ),
      //BODY
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            height: 200,
            width: 410,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
