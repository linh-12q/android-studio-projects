import 'package:flutter/material.dart';

void main() {
  runApp(const StudentApp());
}

// Main app
class StudentApp extends StatelessWidget {
  const StudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student Profile',
      home: StudentScreen(),
    );
  }
}

// StatefulWidget because the UI will change after loading data
class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  String studentInfo = "Click button to load student profile";
  bool isLoading = false;

  // Future + async/await
  Future<String> getStudentData() async {
    // Simulate loading data for 3 seconds
    await Future.delayed(const Duration(seconds: 3));

    return """
ID: 2448526

Name: Lam Dalinh

Major: Computer Science

Year: 2

GPA: 3.79
""";
  }

  // This function updates the UI dynamically
  void loadStudent() async {
    setState(() {
      isLoading = true;
      studentInfo = "Loading student data...";
    });

    String data = await getStudentData();

    setState(() {
      studentInfo = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Profile App"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  size: 55,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                studentInfo,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: isLoading ? null : loadStudent,
                child: Text(isLoading ? "Loading..." : "Load Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}