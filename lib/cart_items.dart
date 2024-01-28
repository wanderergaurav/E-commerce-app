import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sweatshirt_shop/shopping_item.dart';

import 'cart.dart';

class CartItems extends StatefulWidget {
  SweatShirts sweatShirts;
  CartItems({super.key, required this.sweatShirts});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {

  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.sweatShirts);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.sweatShirts.imagePath),
        title: Text(widget.sweatShirts.name),
        subtitle: Text(widget.sweatShirts.price),
        trailing: IconButton(icon: Icon(Icons.delete), onPressed: removeItemFromCart,)
      ),
    );
  }
}
