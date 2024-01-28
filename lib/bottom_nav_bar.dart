import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget{

  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: GNav(
        color: Colors.grey.shade400,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value){onTabChange!(value);},
        tabs: [
          GButton(icon: Icons.home,
          text: 'Shop',),
          GButton(icon: Icons.shopping_bag_rounded,
          text: 'Cart',)
        ],),
      ),
    );
  }
}