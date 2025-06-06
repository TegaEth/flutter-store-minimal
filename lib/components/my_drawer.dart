import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // drawer header: logo
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              //shop tile
              MyListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () {
                  // Navigate to shop page - pop drawer first
                  Navigator.pop(context);

                  //go to shop page
                  Navigator.pushNamed(context, "/shop_page");
                },
              ),
              MyListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  // Navigate to cart page - pop drawer first
                  Navigator.pop(context);

                  //go to cart page
                  Navigator.pushNamed(context, "/cart_page");
                },
              ),
            ],
          ),

          // exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: MyListTile(
              text: "Exit",
              icon: Icons.exit_to_app,
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/intro_page',
                  (route) => false,
                );
              },
            ),
          ),

          //cart tile

          //exit
        ],
      ),
    );
  }
}
