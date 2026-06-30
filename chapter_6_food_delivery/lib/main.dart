import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget foodItem(IconData icon, String name, String price) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: ListTile(
        leading: Icon(icon, size: 45, color: Colors.orange),
        title: Text(name),
        subtitle: Text(price),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text("Order"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(
          backgroundColor: Colors.purple[50],
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.black),
          title: const Text(
            "Food Delivery",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            foodItem(Icons.local_pizza, "Pizza", "\$12"),
            foodItem(Icons.lunch_dining, "Burger", "\$8"),
            foodItem(Icons.coffee, "Coffee", "\$4"),
            foodItem(Icons.icecream, "Ice Cream", "\$3"),
          ],
        ),
      ),
    );
  }
}