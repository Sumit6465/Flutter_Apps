import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:flutter_svg/svg.dart";

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
            title: const Text(
              "Where do you want to travel ?",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromRGBO(27, 48, 101, 1),
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 370,
                    //color: Colors.amber,
                    child: Row(
                      children: [
                        Container(
                          //padding: EdgeInsets.all(10),
                          height: 50,
                          width: 290,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(233, 237, 248, 1),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Select Destination",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(52, 111, 249, 1)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SvgPicture.asset(
                                  "assets/svg/downarrow.svg",
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 50,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(52, 111, 249, 1),
                              shape: BoxShape.circle),
                          child: const Icon(Icons.search),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Best Deals",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Sorted by lower price",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(132, 134, 136, 1)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset("assets/svg/greyarrow.svg"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 145,
                          height: 145,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(233, 237, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "EL Cario",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(color: Colors.amber),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Egypt",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Container(
                                  child: SvgPicture.asset(
                                      "assets/svg/demophoto.svg"),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                      height: 25,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Text(
                                        "More",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(52, 111, 249, 1),
                                        ),
                                      ))),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      height: 25,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              52, 111, 249, 1),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Text(
                                        "260",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 145,
                          height: 145,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(233, 237, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "London",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(color: Colors.amber),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "England",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Container(
                                  child: SvgPicture.asset(
                                      "assets/svg/demophoto.svg"),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                      height: 25,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Text(
                                        "More",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(52, 111, 249, 1),
                                        ),
                                      ))),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      height: 25,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              52, 111, 249, 1),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Text(
                                        "330",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 145,
                          height: 145,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(233, 237, 248, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "EL Cario",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(color: Colors.amber),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  )
                                ],
                              ),
                              const Row(
                                children: [
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Egypt",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: Container(
                                  child: SvgPicture.asset(
                                      "assets/svg/demophoto.svg"),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                      height: 25,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Text(
                                        "More",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(52, 111, 249, 1),
                                        ),
                                      ))),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      height: 25,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(
                                              52, 111, 249, 1),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: const Center(
                                          child: Text(
                                        "330",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Popular Destinations",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Sorted by Higher reting",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(179, 182, 187, 1),
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset("assets/svg/greyarrow.svg"),
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
                          height: 200,
                          width: 145,
                          child: Column(
                            children: [
                              Container(
                                height: 145,
                                width: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                    child: SvgPicture.asset(
                                        "assets/svg/demophoto.svg")),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Cancun ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(228, 161, 2, 1)),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Mexico ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "841 Reviews",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 200,
                          width: 145,
                          child: Column(
                            children: [
                              Container(
                                height: 145,
                                width: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                    child: SvgPicture.asset(
                                        "assets/svg/demophoto.svg")),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Santorini ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(228, 161, 2, 1)),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Greece ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "663 Reviews",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 200,
                          width: 145,
                          child: Column(
                            children: [
                              Container(
                                height: 145,
                                width: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                    child: SvgPicture.asset(
                                        "assets/svg/demophoto.svg")),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Cancun ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(228, 161, 2, 1)),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Mexico ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "841 Reviews",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Popular Destinations",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Sorted by Higher reting",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(179, 182, 187, 1),
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset("assets/svg/greyarrow.svg"),
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
                          height: 200,
                          width: 145,
                          child: Column(
                            children: [
                              Container(
                                height: 145,
                                width: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                    child: SvgPicture.asset(
                                        "assets/svg/demophoto.svg")),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Cancun ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(228, 161, 2, 1)),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Mexico ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "841 Reviews",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 200,
                          width: 145,
                          child: Column(
                            children: [
                              Container(
                                height: 145,
                                width: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                    child: SvgPicture.asset(
                                        "assets/svg/demophoto.svg")),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Santorini ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(228, 161, 2, 1)),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Greece ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "663 Reviews",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 200,
                          width: 145,
                          child: Column(
                            children: [
                              Container(
                                height: 145,
                                width: 145,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromRGBO(233, 237, 248, 1),
                                ),
                                child: Center(
                                    child: SvgPicture.asset(
                                        "assets/svg/demophoto.svg")),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Cancun ",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Color.fromRGBO(228, 161, 2, 1),
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(228, 161, 2, 1)),
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Mexico ",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "841 Reviews",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromRGBO(179, 182, 187, 1)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
