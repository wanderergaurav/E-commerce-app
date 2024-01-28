import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:sweatshirt_shop/shopping_item.dart';

class Cart extends ChangeNotifier{
  List<SweatShirts> sweatshirtShop = [
    SweatShirts(
        name: 'Puma SweatShirt',
        price: '1299',
        description: 'Mens black cotton sweatshirt',
        imagePath: 'assets/images/item_1.png'),
    SweatShirts(
        name: 'Oversize SweatShirt',
        price: '1399',
        description: 'Oversized sweatshirt for women',
        imagePath: 'assets/images/item_3.png'),
    SweatShirts(
        name: 'Adidas SweatShirt',
        price: '2399',
        description: 'High quality casual sweatshirt',
        imagePath: 'assets/images/item_4.png'),
    SweatShirts(
        name: 'Nike SweatShirt',
        price: '1599',
        description: 'Premium quality sweatshirt for men',
        imagePath: 'assets/images/item_2.png'),
    SweatShirts(
        name: 'Adidas SweatShirt',
        price: '1799',
        description: 'High quality solid coloured sweatshirt for women',
        imagePath: 'assets/images/item_5.png'),
  ];

  List<SweatShirts> userCart = [];

  List<SweatShirts> getShoppingList(){
    return sweatshirtShop;
  }

  List<SweatShirts> getUserCart(){
    return userCart;
  }

  void addItemToCart(SweatShirts sweatShirts){
    userCart.add(sweatShirts);
    notifyListeners();
  }

  void removeItemFromCart(SweatShirts sweatShirts){
    userCart.remove(sweatShirts);
    notifyListeners();
  }
}