import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State createState() {
    return _CounterAppState();
  }
}

class _CounterAppState extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CounterApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text("$count"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {count++, setState(() {})},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
