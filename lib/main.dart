import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sweatshirt_shop/cart.dart';
import 'package:sweatshirt_shop/intro_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
        create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Demo App",
          theme: ThemeData(
            primarySwatch: Colors.purple,
          ),
          home: IntroPage(),
      ));
      }
    }

