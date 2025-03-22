import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes  for sale 
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      description: ' The forward-thinking design of this latest signature shoe',
      imagePath: 'lib/images/chocolate_donut.png',
    ),

    Shoe(
      name: 'AIr Jordan',
      price: '286',
      description: ' The forward-thinking design of this latest signature shoe',
      imagePath: 'lib/images/chocolate_donut.png',
    ),

    Shoe(
      name: 'KD Treys',
      price: '225',
      description: ' The forward-thinking design of this latest signature shoe',
      imagePath: 'lib/images/chocolate_donut.png',
    ),

    Shoe(
      name: 'simishoes',
      price: '185',
      description: ' The forward-thinking design of this latest signature shoe',
      imagePath: 'lib/images/nike1.png',
    ),
  ];

  //list of items  in user cart
List<Shoe> userCart = [];

// get list of shoes for sale
List<Shoe> getShoeList() {
  return shoeShop;
}

//get cart
List<Shoe> getUserCart(){
  return userCart;
}

// add items to cart 
void addItemToCart (Shoe shoe) {
  userCart.add(shoe);
  notifyListeners();
}

//remove item form cart
void removeItemFromCart(Shoe shoe) {
  userCart.remove(shoe);
  notifyListeners();
}
}

