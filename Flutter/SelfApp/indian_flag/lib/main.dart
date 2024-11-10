import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("INDIAN FLAG"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(width: 15, height: 500, color: Colors.brown[900])
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 270,
                      height: 45,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 270,
                      height: 45,
                      color: Colors.white,
                      child: Image.network(
                          "https://cdn.pixabay.com/photo/2023/04/06/16/29/ashoka-chakra-7904695_640.png"),
                    ),
                    Container(
                      width: 270,
                      height: 45,
                      color: Colors.green,
                    ),
                    Container(
                      height: 340,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
