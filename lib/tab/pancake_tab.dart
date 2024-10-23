import 'package:flutter/material.dart';
import '../utils/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  // List of pancakes
  final List pancakesOnSale = const [
    ["Pancake clasic", 40.0, Colors.blueAccent, "lib/images/pancake_clasic.jpg"],
    ["Pancake Fresa", 45.0, Colors.purple, "lib/images/pancake_strawberry.jpg"],
    ["Pancake mora", 48.0, Colors.pinkAccent, "lib/images/pancake_blackberry.jpg"],
    ["Pancake special", 55.0, Colors.yellowAccent, "lib/images/pancake_special.jpg"],
    ["Pancake clasic", 40.0, Colors.blueAccent, "lib/images/pancake_clasic.jpg"],
    ["Pancake Fresa", 45.0, Colors.purple, "lib/images/pancake_strawberry.jpg"],
    ["Pancake mora", 48.0, Colors.pinkAccent, "lib/images/pancake_blackberry.jpg"],
    ["Pancake special", 55.0, Colors.yellowAccent, "lib/images/pancake_special.jpg"],
  ];

  final void Function(String itemName, double itemPrice) addItemToCart; // Add this line

  const PancakeTab({super.key, required this.addItemToCart}); // Pass the function

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakesOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final itemName = pancakesOnSale[index][0];
            final itemPrice = pancakesOnSale[index][1];

            // Call the addItemToCart function with the item's details
            addItemToCart(itemName, itemPrice);
          },
          child: PancakeTile(
            pancakeFlavor: pancakesOnSale[index][0],
            pancakePrice: pancakesOnSale[index][1].toString(), // Ensure it's a string
            pancakeColor: pancakesOnSale[index][2],
            imageName: pancakesOnSale[index][3],
          ),
        );
      },
    );
  }
}
