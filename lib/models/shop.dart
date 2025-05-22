import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item Description 1",
      imagePath: "assets/2.jpg",
    ), //imagePath: imagePath
    Product(
      name: "Product 2",
      price: 109.99,
      description: "Item Description 2",
      imagePath: "assets/1.webp",
    ),
    Product(
      name: "Product 1",
      price: 456.99,
      description: "Item Description 3",
      imagePath: "assets/3.webp",
    ),
    Product(
      name: "Product 1",
      price: 693.99,
      description: "Item Description 4",
      imagePath: "assets/4.jpeg",
    ),
  ];

  // user car
  final List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
