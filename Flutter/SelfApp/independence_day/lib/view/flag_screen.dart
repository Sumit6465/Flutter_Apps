import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:independence_day/controller/flag_controller.dart';

class FlagScreen extends StatefulWidget {
  final FlagController putController = Get.put(FlagController());
  final FlagController findController = Get.find<FlagController>();
  FlagScreen({super.key});

  @override
  State<FlagScreen> createState() => _FlagScreenState();
}

class _FlagScreenState extends State<FlagScreen> {
  @override
  void initState() {
    widget.findController.startAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(208, 240, 192, 1),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 49,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 50,
                  width: 370,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
                Positioned(
                  top: 50,
                  child: Container(
                    height: 50,
                    width: 370,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 100,
                  child: Container(
                    height: 50,
                    width: 370,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                ),
                Positioned(
                  top: -24,
                  left: MediaQuery.of(context).size.width / 4.8,
                  child: RotationTransition(
                    turns: Tween(begin: 0.9, end: 1.0).animate(
                      widget.findController.animationController!,
                    ),
                    child: Image.asset(
                      'assets/ashok chakra1.png',
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 140,
            ),
            Center(
              child: Image.asset('assets/text2.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 186,
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/1841818735.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              // child: Image.asset('assets/1841818735.jpg'),
            ),
            Container(
              height: 186,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/army.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              // child: Image.asset('assets/1841818735.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
