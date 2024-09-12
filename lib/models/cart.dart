import 'package:ecom/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    //1
    Shoe(
      name: 'Jordan Max Aura 2',
      price: '94',
      imagePath: 'lib/images/shoe1.jpg',
      description: "NIKE Men's Jordan Max Aura 2 Basketball Shoe",
    ),
    //2
    Shoe(
      name: 'Nike Air Jordan 4',
      price: '179',
      imagePath: 'lib/images/shoe2.jpg',
      description: ' Red Nike Air Jordan 4 Retro Big Kids',
    ),
    //3
    Shoe(
      name: "Jordan Boy's 1",
      price: '108',
      imagePath: 'lib/images/shoe3.jpg',
      description: "Jordan Boy's 1 Retro High OG (Little Kid)",
    ),
    //4
    Shoe(
      name: "Jordan 4",
      price: '179',
      imagePath: 'lib/images/shoe4.jpg',
      description: "Nike Air Jordan 4 Retro Big Kids",
    ),
    //5
    Shoe(
      name: "Jordan",
      price: '135',
      imagePath: 'lib/images/shoe5.jpg',
      description:
          "Jordan Men's True Flight White/University Blue-Black (342964 140)",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items to cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
