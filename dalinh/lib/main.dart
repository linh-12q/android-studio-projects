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
        appBar: AppBar(
          title: const Text(
            "Foodpanda",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.pinkAccent,
        ),

        body: Align(
          alignment: Alignment.topCenter,
          child: ClipRRect(
            // borderRadius: BorderRadius.circular(1),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQebP8TvnCoUrD60p2q_siAoIUjNNSxEOWxaoealQ4hEEHguVchjd5GgFM3&s=10",
              width:700,
              height: 1200,
              fit: BoxFit.contain,
            ),
          ),

        ),

      ),
    );
  }
}