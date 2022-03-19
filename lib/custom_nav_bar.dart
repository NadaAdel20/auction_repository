
import 'package:auction/online_auction.dart';
import 'package:auction/rader_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatefulWidget {
  const CustomButtom({Key? key}) : super(key: key);

  @override
  _CustomButtomState createState() => _CustomButtomState();
}

class _CustomButtomState extends State<CustomButtom> {
 /* List<Widget> screens=
      [
        RaderScreen(),
      ];*/
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    return
     // body:screens[currentIndex],
      BottomNavigationBar(
        //backgroundColor: Colors.black,
        fixedColor: Colors.teal,
     type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
      setState(() {
        currentIndex = index;
      });
    },

    items: [
    BottomNavigationBarItem(
    icon: Icon(
    Icons.home,
    ),
    label: 'Home Page'),
    BottomNavigationBarItem(
    icon: GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=> RaderScreen(),
        ),);
      },
      child: Icon(
      Icons.radar,
      ),
    ),
    label: 'Rader'),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.add,
    ),
    label: 'Add'),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.message,
    ),
    label: 'Messages'),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.face,
    ),
    label: 'Profile'),
    ],
    );


  }
}
