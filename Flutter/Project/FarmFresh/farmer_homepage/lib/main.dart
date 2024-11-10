import "package:farmer_homepage/pending_orders.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/gestures.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Farmer_HomePage(),
    );
  }
}

class Farmer_HomePage extends StatefulWidget {
  const Farmer_HomePage({super.key});
  @override
  State createState() => Farmer_HomePage_State();
}

class Farmer_HomePage_State extends State {
  Widget homePage(int count) {
    if (count == 1) {
      return Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 140,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15, bottom: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.pink,
                        ),
                        // child: Image.asset("assets/images/images.jpg",
                        //     fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.black,
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "My Orders",
              style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            backgroundColor: Colors.green,
            centerTitle: true,
            bottom: const TabBar(
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.white60,
                labelColor: Colors.white,
                //controller:TabController,
                tabs: [
                  Tab(text: "Pending orders"),
                  Tab(text: "Dispatched orders"),
                ]),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return homePage(1);
                },
              ),
              ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return homePage(2);
                },
              ),
            ],
          )),
    );
  }
}
