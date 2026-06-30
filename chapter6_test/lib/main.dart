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
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: const [
        //       Icon(Icons.home, size: 20),
        //       SizedBox(width: 10),
        //       Text("Home", style: TextStyle(fontSize: 20, color: Colors.blue)),
        //
        //       SizedBox(width: 30),
        //
        //       Icon(Icons.person, size: 20),
        //       SizedBox(width: 10),
        //       Text("Profile", style: TextStyle(fontSize: 20, color: Colors.blue)),
        //
        //       SizedBox(width: 30),
        //
        //       Icon(Icons.settings, size: 20),
        //       SizedBox(width: 10),
        //       Text("Setting", style: TextStyle(fontSize: 20, color: Colors.blue)),
        //     ],
        //   ),
        // ),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: const [
        //       Icon(Icons.home, size: 20),
        //       Text("Home", style: TextStyle(fontSize: 20, color: Colors.blue)),
        //
        //       SizedBox(height: 30),
        //
        //       Icon(Icons.person, size: 20),
        //       Text("Profile", style: TextStyle(fontSize: 20, color: Colors.blue)),
        //
        //       SizedBox(height: 30),
        //
        //       Icon(Icons.settings, size: 20),
        //       Text("Setting", style: TextStyle(fontSize: 20, color: Colors.blue)),
        //     ],
        //   ),
        //   child: Card(
        //     child: Padding(
        //       padding: EdgeInsets.all(20),
        //       child: Column(
        //         mainAxisSize: MainAxisSize.min,
        //         children: [
        //           Image.network(
        //             "https://cdni.iconscout.com/illustration/premium/thumb/woman-profile-illustration-svg-download-png-6590622.png",
        //             width: 100,
        //             height: 100,
        //           ),
        //           Text("Name: Lam Dalinh"),
        //           Text("Department: IT"),
        //         ],
        //       ),
        //     ),
        //   ),

           child: Row(

           )
        ),

      ),
    );
  }
}