import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sweatshirt_shop/cart.dart';
import 'package:sweatshirt_shop/shopping_item.dart';

class ShopPage extends StatefulWidget{
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addItemsToCart(SweatShirts sweatShirts){    //add shoe to cart
    Provider.of<Cart>(context, listen: false).addItemToCart(sweatShirts);

    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Successfully added'),
      content: Text('Check your cart'),
    ));
  }

  @override
  Widget build(BuildContext context){
    return Consumer <Cart>(
      builder: (context, value,child) => Column(
        children: [
          //search bar
          Center(
            child: Container(
              height: 40, width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Search', style: TextStyle(color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.search, color: Colors.grey,),
                  ),
                ],
                      ),
                    ),
          ),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Top Picks', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                  Text('See all', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 15),)
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),

          Expanded(            //list of items for sale
              child: ListView.builder(
                itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    SweatShirts sweatShirt = value.getShoppingList()[index];  //get an item from lists

            return ShoppingItems(        //return different items
              sweatShirt: sweatShirt,
              onTap: () => addItemsToCart(sweatShirt),
            );
          },
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(color: Colors.white,),
          )
                ],
              ),
    );
  }
}

