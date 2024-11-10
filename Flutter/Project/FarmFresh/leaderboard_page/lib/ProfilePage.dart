import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leaderboard_page/FAQs.dart';
import 'package:leaderboard_page/ProfileDetail.dart';
import 'package:leaderboard_page/TermandCondition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Container(
          height: 900,
          width: 300,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 0,
              ),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(color: Colors.grey),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/MyPhotoValid.jpg"),
                      radius: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sumit Katkar",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.green))),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DeliveryPersonProfile()));
                  },
                  child: const Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.person_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Profile Details",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.green))),
                child: const Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.account_balance),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Bank Details",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.green))),
                child: const Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.settings),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FAQPage()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2, color: Colors.green))),
                  child: const Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.help_outlined),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "FAQs",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const TermsandconditionsPage()));
                },
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2, color: Colors.green))),
                  child: const Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.assignment),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Spacer(),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 70,
              ),
              Text("Your Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              SizedBox(
                width: 110,
              ),
              Icon(Icons.notifications_active)
            ],
          ),
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.grey,
              ),
            ),
            Positioned(
              child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: const Column(
                    children: [
                      // const SizedBox(
                      //   height: 50,
                      // ),
                      SizedBox(
                        height: 30,
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        backgroundImage:
                            AssetImage("assets/images/MyPhotoValid.jpg"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sumit Katkar",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  )),
            ),
            Positioned(
              top: 200,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Center(
                  child: Container(
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Your Orders",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        const Text(
                          "+10 since last week",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomProgressIndicator(
                          userScore: 90,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.red,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("Pending")
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("InProgress")
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.blue,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("Dispached")
                                ],
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 82,
                                  ),
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.yellow,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text("Delivered")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 530,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Center(
                  child: Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Your Products",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/mango.webp"),
                                    radius: 30,
                                  ),
                                  Text("Mango",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black))
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/mango.webp"),
                                    radius: 30,
                                  ),
                                  Text("Banana",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black))
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/mango.webp"),
                                    radius: 30,
                                  ),
                                  Text("Chikoo",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black))
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/mango.webp"),
                                    radius: 30,
                                  ),
                                  Text("Potato",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black))
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/mango.webp"),
                                    radius: 30,
                                  ),
                                  Text("Brinjal",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/images/mango.webp"),
                                    radius: 30,
                                  ),
                                  Text(
                                    "Pomogranate",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class CustomProgressIndicator extends StatelessWidget {
  final double userScore;
  final double maxScore = 100;

  CustomProgressIndicator({required this.userScore});

  @override
  Widget build(BuildContext context) {
    double progress = userScore / maxScore;

    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: CustomPaint(
            painter: ArcPainter(progress),
          ),
        ),
        Text(
          '${userScore.toInt()}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class ArcPainter extends CustomPainter {
  final double progress;
  ArcPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    double angle = 2 * pi * progress;

    Paint baseArcPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    Paint progressArcPaint = Paint()
      ..color = const Color(0xFF1F2E58)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;

    // Draw base arc (full circle background)
    canvas.drawCircle(center, radius, baseArcPaint);

    // Draw progress arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2, // Starting from top
      angle, // Sweep angle
      false,
      progressArcPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
