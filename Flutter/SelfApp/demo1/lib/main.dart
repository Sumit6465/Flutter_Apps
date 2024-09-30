import 'package:flutter/cupertino.dart';
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
          title: const Text("App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                    height: 60,
                    child: Image.network(
                        "https://t3.ftcdn.net/jpg/03/60/35/74/360_F_360357490_yDoIMJuxxzE2WnXwHxvOuVM92PMKkCtZ.jpg"),
                  ),
                  Container(
                    width: 80,
                    height: 20,
                    child: const Text("Indian Flag"),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
