import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.access_alarm_sharp,
                  color: Colors.black,
                ))
          ],
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.adb_rounded)),
        ),
      ),
    );
  }
}
