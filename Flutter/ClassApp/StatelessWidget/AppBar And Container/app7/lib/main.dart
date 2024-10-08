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
              title: const Text("App5"),
              centerTitle: true,
              backgroundColor: Colors.blue,
            ),
            body: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Row(children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          "https://tse3.mm.bing.net/th?id=OIP.CeWXYCYlItXFF-ia7ZOQiQHaEo&pid=Api&P=0&h=180",
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPl-XFusso02EW7mEG9q5OYai5PYXEZsHKYQ&s",
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf4OqYKdFTZLi-0oR_V1Lgv7v1owf_Cq-gEw&s",
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3AwCqfsZYVzY3B_AKPOmkD5Nxm_Yzq7V6kw&s",
                          fit: BoxFit.cover),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.network(
                          "https://img.freepik.com/premium-photo/tranquil-scene-balanced-stones-by-calm-lake-framed-by-mountains-serene-sky-dawn_923559-22264.jpg",
                          fit: BoxFit.cover),
                    )
                  ]),
                ))));
  }
}
