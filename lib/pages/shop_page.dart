import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/my_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page")
      ),
      
      drawer: MyDrawer(),
    );
  }
}