import "dart:ui";

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _MyApp();
}

class _MyApp extends State {
  WidgetStatePropertyAll<Color?> changeColor() {
    return const WidgetStatePropertyAll(Colors.blue);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Cart",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 58, 52, 226)),
          ),
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Color.fromARGB(255, 91, 87, 87),
          ),
          centerTitle: true,
          shape: const Border(
              bottom: BorderSide(
            width: 1.0,
            color: Color.fromARGB(255, 91, 87, 87),
          )),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 450,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 237, 230, 230),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 237, 230, 230),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 270,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 237, 230, 230),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Text(
                                "Nike Shoes",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: const Text(
                                "With iconic style and Legendry comfort,on repeat"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Icon(Icons.attach_money),
                              const Text(
                                "570.00",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              const Icon(Icons.remove),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: Center(child: const Text("1")),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.add)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 450,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 237, 230, 230),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://t3.ftcdn.net/jpg/06/12/00/18/360_F_612001823_TkzT0xmIgagoDCyQ0yuJYEGu8j6VNVYT.jpg",
                              ),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 270,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 237, 230, 230),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Text(
                                "Nike Shoes",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: const Text(
                                "With iconic style and Legendry comfort,on repeat"),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // SizedBox(
                              //   width: 10,
                              // ),
                              Icon(Icons.attach_money),
                              const Text(
                                "77.00",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              const Icon(Icons.remove),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                child: const Center(child: const Text("1")),
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(Icons.add)
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 220,
                    // color: Colors.amber,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Subtotal:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 93, 91, 91)),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Delivery Fee:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 93, 91, 91))),
                        SizedBox(
                          height: 15,
                        ),
                        Text("Discount:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 93, 91, 91))),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                    width: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.attach_money),
                            Text(
                              "${800.00}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 9, 8, 8)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(Icons.attach_money),
                            Text(
                              "5.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 9, 8, 8)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text("40%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 9, 8, 8))),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: changeColor()),
                onPressed: () {},
                child: const Text(
                  "Checkout for Rs 480.00",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
