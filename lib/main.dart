import 'package:bubble_tea/components/bottom_navigation_bar.dart';
import 'package:bubble_tea/loginscreen.dart';
import 'package:bubble_tea/models/shop.dart';
import 'package:bubble_tea/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import 'pages/Cart_page.dart';
import 'pages/Shop_page.dart';
void main()
{
runApp(myapp());
}
class myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context)=>BubbleTeaShop(),
      builder: (context,child)=>MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.brown
        ),
        home: splash_screen(),
      ),
    );


  }
}
class home_page  extends StatefulWidget
{
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List pages=[
    Shop_page(),
    Cart_page(),
  ];

  int selected_index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: GNav(
          onTabChange: (value){

            setState((){
              selected_index=value;

            });

          },
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.white,
          color: Colors.white,
          gap: 8,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs:[
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',),
          ],
        ),
      ),
      body: pages[selected_index],


    );


  }
}