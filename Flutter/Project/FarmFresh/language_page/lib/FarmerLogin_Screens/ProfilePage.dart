import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:language_page/FarmerLogin_Screens/BankDetails.dart';
import 'package:language_page/FarmerLogin_Screens/FAQs.dart';
import 'package:language_page/FarmerLogin_Screens/ProfileDetail.dart';
import 'package:language_page/FarmerLogin_Screens/Setting.dart';
import 'package:language_page/FarmerLogin_Screens/TermandCondition.dart';
import 'package:language_page/FarmerLogin_Screens/YourProducts.dart';
import 'package:language_page/FarmerLogin_Screens/wallet_page.dart';
import 'package:language_page/Login_Signup_Screen/Login_page.dart';
import 'package:fl_chart/fl_chart.dart'; // Importing fl_chart

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
  final ImagePicker imagePicker = ImagePicker();
  XFile? photo;

  Future<void> pickImage() async {
    photo = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // Example data for orders' status
    final double pendingOrders = 40;
    final double dispatched = 30;
    final double inProgress = 15;
    final double delivered = 15;

    return Scaffold(
      drawer: Container(
        height: 900,
        width: 300,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
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
              decoration: const BoxDecoration(color: Colors.grey),
              child: const Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/MyPhotoValid.jpg"),
                    radius: 40,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sumit Katkar",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
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
                          builder: (context) => const DeliveryPersonProfile()));
                },
                child: const Row(
                  children: [
                    SizedBox(
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
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Wallet_Page()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.green))),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.wallet),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Wallet",
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
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const YourProduct_Amount()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.green))),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.inventory),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Your Products",
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
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BankDetailsScreen()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.green))),
                child: const Row(
                  children: [
                    SizedBox(
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
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              },
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.green))),
                child: const Row(
                  children: [
                    SizedBox(
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
            ),
            const SizedBox(
              height: 30,
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
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TermsandconditionsPage()));
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
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                      (route) => false);
                },
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
              width: 50,
            ),
            Text("Your Profile",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(
              width: 80,
            ),
            Icon(Icons.notifications_active)
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey,
          ),
          Positioned(
            child: Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      GestureDetector(
                        onTap: pickImage,
                        child: CircleAvatar(
                          backgroundColor: Colors.blueGrey[50],
                          radius: 50,
                          backgroundImage: photo != null
                              ? FileImage(File(photo!.path))
                              : null,
                          child: photo == null
                              ? const Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey,
                                  size: 30,
                                )
                              : null,
                        ),
                      ),
                      Positioned(
                        right: 4,
                        bottom: 4,
                        child: GestureDetector(
                          onTap: pickImage,
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 15,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.blue,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Sumit Katkar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      'Orders Statistics',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "+10 since last week",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                  //const SizedBox(height: 10),
                  // PieChart container with a fixed height
                  SizedBox(
                    height: 280, // Set a fixed height for the PieChart
                    child: PieChart(
                      PieChartData(
                        borderData: FlBorderData(show: false),
                        sectionsSpace: 0,
                        centerSpaceRadius: 30,
                        sections: [
                          PieChartSectionData(
                            color: Colors.blue,
                            value: pendingOrders,
                            title: '$pendingOrders%',
                            radius: 80,
                            titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          PieChartSectionData(
                            color: Colors.yellow,
                            value: dispatched,
                            title: '$dispatched%',
                            radius: 80,
                            titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          PieChartSectionData(
                            color: Colors.green,
                            value: inProgress,
                            title: '$inProgress%',
                            radius: 80,
                            titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          PieChartSectionData(
                            color: Colors.red,
                            value: delivered,
                            title: '$delivered%',
                            radius: 80,
                            titleStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                            SizedBox(width: 5),
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
                            SizedBox(width: 5),
                            Text("InProgress")
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SizedBox(width: 37),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.blue,
                            ),
                            SizedBox(width: 5),
                            Text("Dispatched")
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            SizedBox(width: 52),
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.yellow,
                            ),
                            SizedBox(width: 5),
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
        ],
      ),
    );
  }
}
