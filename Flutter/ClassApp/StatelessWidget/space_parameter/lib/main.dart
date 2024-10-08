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
          title: Text("Row Scenerios"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,

          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
