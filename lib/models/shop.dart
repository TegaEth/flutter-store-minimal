import 'package:flutter_chat_app/models/product.dart';

class Shop {
  // products for sale
  final List<Product> shop = [
    Product(
      name: "Product 1",
      price: 99.99,
      description: "Item Description 1",
    ), //imagePath: imagePath
    Product(
      name: "Product 2",
      price: 109.99,
      description: "Item Description 2",
    ),
    Product(
      name: "Product 1",
      price: 456.99,
      description: "Item Description 3",
    ),
    Product(
      name: "Product 1",
      price: 693.99,
      description: "Item Description 4",
    ),
  ];

  // user car
  List<Product> cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
  }
  
  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
  }
}
