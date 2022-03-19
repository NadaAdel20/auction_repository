

import 'package:auction/custom_nav_bar.dart';
import 'package:auction/search_screen.dart';
import 'package:auction/shopping_cart_screen.dart';
import 'package:auction/sort_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notification_screen.dart';

class RaderScreen extends StatefulWidget {
  const RaderScreen({Key? key}) : super(key: key);

  @override
  _RaderScreenState createState() => _RaderScreenState();
}

class _RaderScreenState extends State<RaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Auction',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingCartScreen(),
                ),
              );
            },
            icon: Icon(Icons.shopping_cart_rounded),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
            icon: (Icon(
              Icons.notifications,
            )),
          ),
          IconButton(
            onPressed: () {},
            icon: (Icon(Icons.category)),
          ),
          /*IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> SearchScreen(),
              ),);
            },
             icon: (Icon(Icons.menu)),
          ),*/
          PopupMenuButton(
              tooltip: 'Menu',
              child: Icon(
                Icons.more_vert,
                size: 28.0,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchScreen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          (Icon(
                            Icons.search,
                            color: Colors.teal,
                            size: 30,
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )),
                PopupMenuItem(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SortScreen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          (Icon(
                            Icons.sort,
                            color: Colors.teal,
                            size: 30,
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Sort By',
                            style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )),
              ]),
        ],
      ),
      bottomNavigationBar: CustomButtom(),

    );
  }
}
