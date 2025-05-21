import 'package:flutter/material.dart';
import 'package:flutter_chat_app/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           //Product image
           AspectRatio(
             aspectRatio: 1,
             child: Container(
               decoration: BoxDecoration(
                 color: Theme.of(context).colorScheme.secondary,
                 borderRadius: BorderRadius.circular(12),
               ),
               width: double.infinity,
               padding: const EdgeInsets.all(25),
               child: const Icon(Icons.favorite),
             ),
           ),
            const SizedBox(height: 25,),
            //Product name
           Text(
             product.name,
             style: const TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 20
             ),
             ),
              const SizedBox(height: 10),
            //Product description
           Text(
             product.description,
             style: TextStyle(
               color: Theme.of(context).colorScheme.inversePrimary
             ),
             ),
           ],
         ),

          //Product price + add to cart button
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
