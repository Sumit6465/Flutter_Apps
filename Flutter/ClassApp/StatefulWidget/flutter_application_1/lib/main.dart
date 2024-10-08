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
            title: const Text("ListView Builder"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: ListView.builder(
              itemCount: 50,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Center(child: Text("$index"));
              })),
    );
  }
}
