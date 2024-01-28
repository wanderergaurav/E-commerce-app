import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sweatshirt_shop/intro_page.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
    super.initState();

    Timer(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => IntroPage()));
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.grey.shade300,
        child: const Center(
            child: Text('Welcome to\nSweatShirt \n     Shop',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,fontStyle: FontStyle.italic,color: Colors.black),),
            ),
      ),
    );
  }
}