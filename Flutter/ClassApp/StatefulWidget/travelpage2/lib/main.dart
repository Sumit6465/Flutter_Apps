import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Text("London",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
              Text(
                "(England)",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              )
            ],
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
          leading: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu_outlined),
              color: Colors.white,
            )
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Included",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "For more details press on the icons.",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(179, 182, 187, 1)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: const Color.fromRGBO(27, 48, 101, 1),
                      ),
                      shape: BoxShape.circle),
                  child: Container(
                      margin: const EdgeInsets.all(2),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(27, 48, 101, 1),
                      ),
                      child: const Icon(
                        Icons.flight,
                        color: Colors.white,
                      )),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: const Color.fromRGBO(27, 48, 101, 1),
                      ),
                      shape: BoxShape.circle),
                  child: Container(
                      margin: const EdgeInsets.all(2),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(27, 48, 101, 1),
                      ),
                      child: const Icon(
                        Icons.hotel,
                        color: Colors.white,
                      )),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: const Color.fromRGBO(27, 48, 101, 1),
                      ),
                      shape: BoxShape.circle),
                  child: Container(
                      margin: const EdgeInsets.all(2),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(27, 48, 101, 1),
                      ),
                      child: const Icon(
                        Icons.car_repair,
                        color: Colors.white,
                      )),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: const Color.fromRGBO(27, 48, 101, 1),
                      ),
                      shape: BoxShape.circle),
                  child: Container(
                      margin: const EdgeInsets.all(2),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(27, 48, 101, 1),
                      ),
                      child: const Icon(
                        Icons.tour,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 30,
                ),
                Text("Flight"),
                SizedBox(
                  width: 70,
                ),
                Text("Hotel"),
                SizedBox(
                  width: 75,
                ),
                Text("Car"),
                SizedBox(
                  width: 75,
                ),
                Text("Tour"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Rating & Reviews",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: Color.fromRGBO(228, 161, 2, 1),
                  size: 20,
                ),
                Text(
                  "4.6",
                  style: TextStyle(
                      fontSize: 20, color: Color.fromRGBO(228, 161, 2, 1)),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Sorted by recent reviews",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(179, 182, 187, 1),
                  ),
                ),
                SvgPicture.asset("assets/svg/greyarrow.svg"),
                const Spacer(),
                const Text(
                  "6745 Reviews",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(179, 182, 187, 1)),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 150,
                    width: 370,
                    color: const Color.fromRGBO(233, 237, 248, 1),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "London is great!",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.4)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "⭐⭐⭐⭐⭐",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              "12/08/18",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.4)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 95,
                              width: 350,
                              child: const Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 0.6)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 150,
                    width: 370,
                    color: const Color.fromRGBO(233, 237, 248, 1),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "London is great!",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              "John Doe",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.4)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "⭐⭐⭐⭐⭐",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              "12/08/18",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(0, 0, 0, 0.4)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 95,
                              width: 350,
                              child: const Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(0, 0, 0, 0.6)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Gallery",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Sorted by recent photos",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(179, 182, 187, 1)),
                ),
                SvgPicture.asset("assets/svg/greyarrow.svg")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(233, 237, 248, 1),
                        ),
                        child: Center(
                            child:
                                SvgPicture.asset("assets/svg/demophoto.svg")),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(233, 237, 248, 1),
                        ),
                        child: Center(
                            child:
                                SvgPicture.asset("assets/svg/demophoto.svg")),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 145,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(233, 237, 248, 1),
                        ),
                        child: Center(
                            child:
                                SvgPicture.asset("assets/svg/demophoto.svg")),
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(border: Border.all(width: 1)),
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Expires in: 58 h 23 min",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 100,
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(52, 111, 249, 1),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                    child: Text(
                  "\$300",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
