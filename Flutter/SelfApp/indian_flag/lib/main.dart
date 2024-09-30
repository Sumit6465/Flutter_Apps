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
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(width: 20, height: 450, color: Colors.brown)
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
