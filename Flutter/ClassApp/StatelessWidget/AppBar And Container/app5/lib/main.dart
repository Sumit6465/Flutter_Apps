import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      "https://static.scientificamerican.com/sciam/cache/file/6284F581-96A1-4D49-9F1B9F22EA328189_source.jpg?w=1200",
                      fit: BoxFit.cover),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      "https://www.kdnuggets.com/wp-content/uploads/tree-todd-quackenbush-unsplash.jpg",
                      fit: BoxFit.cover),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2015/09/21/00/57/cube-949116_640.jpg",
                      fit: BoxFit.cover),
                ),
              ],
            ),
          )),
    );
  }
}
