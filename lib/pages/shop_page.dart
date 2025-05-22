import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/my_drawer.dart';
import 'package:flutter_chat_app/components/my_product_tile.dart';
import 'package:flutter_chat_app/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: const Text("Shop Page"),
        actions: [
          // go to cart page
          IconButton(onPressed: () => Navigator.pushNamed(context, '/cart_page'), icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),

      drawer: MyDrawer(),
      backgroundColor: Colors.grey.shade500,
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          // shop subtitle
          Center(
            child: 
              Text("Pick from a selected list of premium products",
              style: TextStyle(color: Colors.black),
              ),

          ),

          // product list
          SizedBox(
          height: 550,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(15),
            itemBuilder: (context, index) {
            // get individual product from shop
            final product = products[index];

            //return as a product title UI
            return MyProductTile(product: product);
        }),
      ),
        ]
      )
    );
  }
}
