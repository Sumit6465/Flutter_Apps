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
          backgroundColor: Colors.blue,
          title: const Text("App4"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.amber,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.amber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
