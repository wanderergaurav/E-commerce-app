import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget{

  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset('assets/images/sweatshirt_icon.png',height: 450),
            ),

            Text('Go For It', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

            SizedBox(height: 12,),

            Text('Brand new sweatshirts of trending styles with premium quality', style: TextStyle(fontSize: 16, color: Colors.grey), textAlign: TextAlign.center,),

            SizedBox(height: 25,),

            GestureDetector(     //on tap it will got to Home Page
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      return HomePage();
                    }));
              },
              child: Container(     //shop now button
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.black
                ), child: Center(child: Text('Shop Now', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}