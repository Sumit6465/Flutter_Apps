import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          title: const Text("App5"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
