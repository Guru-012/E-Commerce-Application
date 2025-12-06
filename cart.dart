import 'package:flutter/material.dart';
import 'package:proper/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
      name: 'AIR JORDAN',
      price: '19.99',
      imagepath: 'lib/images/shoe 4.png',
      description:
          "Popular lifestyle sneakers known for unique style, quality, and sporty vibes.",
    ),
    Shoe(
      name: 'AIR ZOOM',
      price: '21.12',
      imagepath: 'lib/images/shoe.png',
      description:
      "Comfortable athletic sneaker featuring soft cushioning and bold gradient colors for daily wear.",
    ),
    Shoe(
      name: 'AERORUN MESH',
      price: '18.99',
      imagepath: 'lib/images/shoe2.png',
      description:
      "Lightweight running shoe with breathable mesh, soft cushioning, and a bold blue-green sporty design.",
    ),
    Shoe(
      name: 'FLEX RUN',
      price: '19.99',
      imagepath: 'lib/images/shoe3.png',
      description:
      "Breathable lightweight running shoe with flexible sole, bright sporty colors, and all-day comfort support.",
    ),
  ];
  List<Shoe> userCart=[];

  List<Shoe> getShoeList( ) {
    return shoeShop;
  }
  List<Shoe> getUserCart() {
    return userCart;
  }
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
