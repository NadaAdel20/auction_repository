
import 'package:auction/shopping_cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Notifications',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> ShoppingCartScreen(),
              ),);
            },
            icon: Icon(Icons.shopping_cart_rounded),
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
