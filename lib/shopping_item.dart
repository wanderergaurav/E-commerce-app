import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingItems extends StatelessWidget{
  SweatShirts sweatShirt;
  void Function()? onTap;
  ShoppingItems({super.key, required this.sweatShirt, required this.onTap});
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade100
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
              child: Image.asset(sweatShirt.imagePath)
          ),
          Center(
            child: Text(sweatShirt.description,
              style: TextStyle(color: Colors.grey.shade600),),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(sweatShirt.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  SizedBox(height: 5,),
                  Text('\₹' +sweatShirt.price, style: TextStyle(color: Colors.grey),),
                ],
              ),
      GestureDetector(
        onTap: onTap,
        child: Container(
    decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomRight: Radius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Icon(Icons.add,color: Colors.white,),
    ),
        ),
      )
            ],
          )
        ],
      ),
    );
  }
}
class SweatShirts{
  final String name;
  final String price;
  final String imagePath;
  final String description;

  SweatShirts({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath});
}

