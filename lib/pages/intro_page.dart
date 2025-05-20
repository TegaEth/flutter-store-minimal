import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary
            ),

          const SizedBox(height: 10),

          //title
          Text("Ochi's Store", 
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 24
              ),
            ),
          
          const SizedBox(height: 10),

          //subtitle
          Text("Premium Quality Thoughts",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary
            ),
          ),

          const SizedBox(height: 10),

          //button
          MyButton(onTap: () => Navigator.pushNamed(context, '/shop_page'), child: Icon(Icons.arrow_forward))
        ],
      ),
      ),
    );
  }
}
