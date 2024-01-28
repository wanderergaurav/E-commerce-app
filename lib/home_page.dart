import 'package:flutter/material.dart';
import 'package:sweatshirt_shop/shop_page.dart';

import 'bottom_nav_bar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//this selected index is to control the bottom navigatin bar
  int selectedIndex =0;

  //this method will update our selected index when we tap the bottom bar
  void navigateButtomBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    ShopPage(),

    CartPage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index){navigateButtomBar(index);}
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu, color: Colors.black,),
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },);
            }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade800,
        child: Column(
          children: [
            DrawerHeader(child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Shop the best',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold, color: Colors.grey.shade300),),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.shopping_cart, color: Colors.grey.shade500,),
                )
              ],
            )),
            ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text('Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            ),
            Divider(thickness: 1, color: Colors.grey.shade700,),
            ListTile(
              leading: Icon(Icons.info, color: Colors.white,),
              title: Text('About', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            Divider(thickness: 1, color: Colors.grey.shade700,),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white,),
              title: Text('Logout', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}