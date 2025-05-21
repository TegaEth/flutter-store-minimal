import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Product image
          Icon(Icons.favorite),

          //Product name
          Text(product.name),

          //Product description
          Text(product.description),

          //Product price + add to cart button
          Text(product.price.toStringAsExponential(2)),
        ],
      ),
    );
  }
}
