import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.purple[50],

        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Food Delivery"),
        ),

        body: Column(
          children: const [
            FoodCard(
              icon: Icons.local_pizza,
              name: "Pizza",
              price: "\$12",
            ),

            FoodCard(
              icon: Icons.lunch_dining,
              name: "Burger",
              price: "\$8",
            ),

            FoodCard(
              icon: Icons.coffee,
              name: "Coffee",
              price: "\$4",
            ),

            FoodCard(
              icon: Icons.icecream,
              name: "Ice Cream",
              price: "\$3",
            ),
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final IconData icon;
  final String name;
  final String price;

  const FoodCard({
    super.key,
    required this.icon,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),

      child: ListTile(
        leading: Icon(
          icon,
          size: 40,
          color: Colors.orange,
        ),

        title: Text(name),

        subtitle: Text(price),

        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text("Order"),
        ),
      ),
    );
  }
}