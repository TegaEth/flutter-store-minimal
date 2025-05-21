import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // drawer header: logo
          Column(children: [
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
          MyListTile(text: "Shop", icon: Icons.home, onTap: () {}), 
          MyListTile(text: "Cart", icon: Icons.shopping_cart, onTap: () {}),
          ],),

          // exit shop tile
          Padding(padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "Exit",
              icon: Icons.exit_to_app,
              onTap: () {},
            ),
          ),

          //cart tile

          //exit
        ],
      ),
    );
  }
}
