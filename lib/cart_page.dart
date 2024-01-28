import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sweatshirt_shop/shopping_item.dart';

import 'cart.dart';
import 'cart_items.dart';

class CartPage extends StatefulWidget{
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context){
    return Consumer <Cart>(
        builder: (context, value, child) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My Cart', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
              SizedBox(height: 11,),
              
              Expanded(
                  child: ListView.builder(
                    itemCount: value.getUserCart().length,
                      itemBuilder: (context, index){
                        SweatShirts individualItem = value.getUserCart()[index];
                        return CartItems(sweatShirts: individualItem,);
                      }))
            ],
          ),
        )
    );
  }
}