import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Static ListView"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Container(height: 200, width: 200, color: Colors.amber),
            const Text(
              "App",
              style: TextStyle(fontSize: 30),
            ),
            Container(height: 200, width: 200, color: Colors.amber),
            const Text(
              "App",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}