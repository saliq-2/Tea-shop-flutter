import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class bottom_navigation_bar extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    int selected_index=0;
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
        onTabChange: (value){
          selected_index=value;

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
    );
  }
}