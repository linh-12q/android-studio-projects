import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(
                    "https://cdni.iconscout.com/illustration/premium/thumb/woman-profile-illustration-svg-download-png-6590622.png",
                    width: 100,
                    height: 100,
                  ),
                  Text("Name: Lam Dalinh"),
                  Text("Department: IT"),
                ],
              ),
            ),
          ),

        ),

      ),
    );
  }
}