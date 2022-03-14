
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notification_screen.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Shopping Cart',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_rounded),
            color: Colors.black87,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> NotificationScreen(),
              ),);
            },
            icon: (Icon(Icons.notifications)),
          ),
          IconButton(
            onPressed: () {},
            icon: (Icon(Icons.category)),
          ),
          IconButton(
            onPressed: () {},
            icon: (Icon(Icons.sort)),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i.pinimg.com/564x/0f/c8/7f/0fc87ffeec70af2e12ed01d22f06c2b1.jpg'),
            )),
        child: Center(
          child: Column(

          ),
        ),
      ),
    );
  }
}
