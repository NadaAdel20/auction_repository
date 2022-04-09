
import 'package:auction/buy_ticket_screen.dart';
import 'package:auction/search_screen.dart';
import 'package:auction/sort_screen.dart';
import 'package:auction/username_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'custom_nav_bar.dart';
import 'notification_screen.dart';

class OfflineCommentScreen extends StatefulWidget {
  const OfflineCommentScreen({Key? key}) : super(key: key);

  @override
  _OfflineCommentScreenState createState() => _OfflineCommentScreenState();
}

class _OfflineCommentScreenState extends State<OfflineCommentScreen> {
  int Likes = 10;
  int LikeCount = 1;
  int Add = 500;
  int AddCount = 1;
  int Tickets=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Comments',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          /* IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> ShoppingCartScreen(),
              ),);
            },
            icon: Icon(Icons.shopping_cart_rounded),
          ),*/
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> NotificationScreen(),
              ),);
            },
            icon: (Icon(Icons.notifications,
            )),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context)=> CategoriesScreen(),
              ),);
            },
            icon: (Icon(Icons.category)),
          ),
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
                        Navigator.push(context,MaterialPageRoute(
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
                        Navigator.push(context, MaterialPageRoute( builder: (context) => SortScreen(),
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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://i.pinimg.com/564x/0f/c8/7f/0fc87ffeec70af2e12ed01d22f06c2b1.jpg'),
            )),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 460),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  //mainAxisAlignment:MainAxisAlignment.start,
                  //crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.teal.withOpacity(0.2),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => UserNameScreen(),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: CircleAvatar(
                                                radius: 30,
                                                backgroundColor: Colors.teal,
                                                backgroundImage: NetworkImage(
                                                    'https://as2.ftcdn.net/v2/jpg/00/65/77/27/1000_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg'),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'UserName',
                                          style: TextStyle(
                                            color: Colors.teal[600],
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  Container(
                                    alignment: Alignment.topLeft,
                                    //margin: EdgeInsets.fromLTRB(12,5,320,400),
                                    child: Text(
                                      'Auction Name',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.teal[600],
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    //margin: EdgeInsets.fromLTRB(12,0,320,400),
                                    child: Text(
                                      'Data Data Data',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.teal[600],
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      Text('$Likes'),
                                      Container(
                                        height: 30,
                                        width: 40,
                                        child: FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              Likes++;
                                              //print(Likes);
                                            });
                                          },
                                          heroTag: 'Likes+',
                                          backgroundColor: Colors.teal,
                                          mini: true,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.black,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 30,
                                        width: 40,
                                        child: FloatingActionButton(
                                          onPressed: () {},
                                          backgroundColor: Colors.teal,
                                          mini: true,
                                          child: Icon(
                                            Icons.comment,
                                            color: Colors.black,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('$Tickets'),
                                      Container(
                                        height: 30,
                                        width: 40,
                                        child: FloatingActionButton(
                                          onPressed: () {
                                            setState(() {
                                              Tickets--;
                                            });
                                          },
                                          heroTag: 'Tickets-',
                                          backgroundColor: Colors.teal,
                                          mini: true,
                                          child: Icon(
                                            Icons.collections_bookmark_outlined,
                                            color: Colors.black,
                                            size: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          child: Text('Time of Auction',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.3,
                                          height:140,
                                          //margin: new EdgeInsets.fromLTRB(200,0,0,0),
                                          // color: Colors.black87,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image:  NetworkImage("https://i.pinimg.com/564x/70/f9/dd/70f9dd78e5d27729b98d74cdd4c78484.jpg"),),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          child: Text('Tickets',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.teal,
                                              fontWeight: FontWeight.w600,
                                            ),),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),


                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.teal,
                              backgroundImage: NetworkImage(
                                  'https://as2.ftcdn.net/v2/jpg/00/65/77/27/1000_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width*0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.teal.withOpacity(0.2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text('Comment Comment Comment Comment Comment Comment Comment Comment Comment',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600
                                    ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.teal,
                              backgroundImage: NetworkImage(
                                  'https://as2.ftcdn.net/v2/jpg/00/65/77/27/1000_F_65772719_A1UV5kLi5nCEWI0BNLLiFaBPEkUbv5Fv.jpg'),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width*0.6,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.teal.withOpacity(0.2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text('Comment Comment Comment Comment Comment Comment Comment Comment Comment',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600
                                    ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),


                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.teal.withOpacity(0.1),
                                ),
                                height: 50,
                                width: 293,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Write Comment',
                                    //suffixIcon: Icon(Icons.search),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Colors.teal,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.teal,
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ),


                            ),
                          ),
                          Container(
                            //padding: const EdgeInsets.only(left: 18),
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: InkWell(
                              child: Icon(
                                Icons.send,
                                size: 40,
                                color: Colors.teal,
                              ),
                              onLongPress: () {},
                            ),
                          )

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.5,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(colors: [Colors.teal.shade200,Colors.greenAccent.shade100]),
                        ),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute( builder: (context) => BuyTicketScreen(),
                          ),
                          );
                        },
                            child: Text('Buy Tickets',
                              style: TextStyle(
                                color: Colors.teal[600],
                                fontWeight: FontWeight.w500,
                                fontSize: 30,
                              ),)),
                      ),
                    ),


                  ],


                ),
              ),
            ),
          ),
        ),

      ),

    );
  }
}