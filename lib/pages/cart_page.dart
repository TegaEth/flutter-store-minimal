import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/my_button.dart';
import 'package:flutter_chat_app/components/my_drawer.dart';
import 'package:flutter_chat_app/models/product.dart';
import 'package:flutter_chat_app/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove item from cart method
  void removeFromCart(BuildContext context, Product product) {
    // remove from cart
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: Text("Remove this item to your cart ?"),
            actions: [
              //cancel button
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text("cancel"),
              ),
              // yes button
              MaterialButton(
                onPressed: () {
                  // pop dialog box
                  Navigator.pop(context);

                  //add to cart
                  context.read<Shop>().removeFromCart(product);
                },
                child: Text("yes"),
              ),
            ],
          ),
    );
  }

  //user pressed pay button
  void payButtonOnPressed(BuildContext context) {
    // show dialog box
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("User wants to pay! Connect app to your payment backend."),
        // actions: [
        //   //cancel button
        //   MaterialButton(
        //     onPressed: () => Navigator.pop(context),
        //     child: Text("cancel"),
        //   ),
        //   // yes button
        //   MaterialButton(
        //     onPressed: () {
        //       // pop dialog box
        //       Navigator.pop(context);
        //       // navigate to shop page
        //       Navigator.pushNamed(context, '/shop_page');
        //     },
        //     child: Text("yes"),
        //   ),
        // ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.grey[400],
      body: Column(
        children: [
          // cart list
          Expanded(
            child: cart.isEmpty
            ? const Center(
              child: Text("Cart is empty")
            )
            : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                // get individual product from cart
                final item = cart[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => removeFromCart(context, item),
                  ),
                );
              },
            ),
          ),
          // pay button
          Padding(
            padding: const EdgeInsets.all(50),
            child: MyButton(onTap: () => payButtonOnPressed(context), child: Text("PAY NOW"))
          )
        ],
      ),
    );
  }
}
