import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Pink Candy", "1.00", "lib/images/pink.png", Color.fromARGB(211, 230, 88, 238)],
    ["Rainbow Candy", "2.50", "lib/images/rainbow.png", Color.fromARGB(211, 230, 88, 238)],
    ["Cotton Candy", "3.00", "lib/images/cottoncandy.png", Color.fromARGB(211, 230, 88, 238)],
    ["Candy Mix", "1.00", "lib/images/candymix.png", Color.fromARGB(211, 230, 88, 238)],
    ["Lollipop", "1.00", "lib/images/lollipop.png", Color.fromARGB(211, 230, 88, 238)],
    ["Gummybears", "1.00", "lib/images/gummybear.png", Color.fromARGB(211, 230, 88, 238)],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}