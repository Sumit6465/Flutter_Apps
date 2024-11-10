import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';
//import 'package:language_page/language_page.dart';

class InfoSlidesPage extends StatefulWidget {
  const InfoSlidesPage({super.key});

  @override
  State<InfoSlidesPage> createState() => _InfoSlidesPageState();
}

class _InfoSlidesPageState extends State<InfoSlidesPage> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.green[50],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment
                .stretch, // Ensure buttons stretch across the width
            children: [
              const Text(
                "Login",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                textAlign: TextAlign.center, // Center align text
              ),
              const SizedBox(height: 20),
              // Customer Login Text and Button
              buildLoginSection("Shop Fresh Produce:", "Login as Customer"),
              const SizedBox(height: 20),
              // Seller Login Text and Button
              buildLoginSection(
                  "Sell Fresh Produce:", "Login as Farmer/Seller"),
              const SizedBox(height: 20),
              // Delivery Person Login Text and Button
              buildLoginSection(
                  "Deliver Fresh Produce:", "Login as Delivery Person"),
              const SizedBox(height: 30),
            ],
          ),
        );
      },
    );
  }

  Widget buildLoginSection(String labelText, String buttonText) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              labelText,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: const Size.fromHeight(40), // Set button height
            ),
            child: Text(buttonText,
                style: const TextStyle(fontSize: 15, color: Colors.white)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.green, Color.fromARGB(255, 232, 236, 233)],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final imageList = [
                    "assets/customer to farmer 1.jpg",
                    "assets/smart farmer.jpg",
                    "assets/pre order1.jpg",
                    "assets/fast delivery1.jpg",
                  ];

                  final titleList = [
                    "Direct Farmer-Customer Connection",
                    "Dynamic Pricing Control",
                    "Pre-Booking System",
                    "Fast Delivery",
                  ];

                  final descriptionList = [
                    "The app facilitates a direct relationship between farmers and consumers, ensuring fair pricing and transparency.",
                    "Farmers have the autonomy to set their product prices, allowing them to reflect the market conditions and maintain fair earnings.",
                    "Farmers can post their product availability, allowing customers to pre-book items, ensuring they receive what they need when it's fresh.",
                    "The app prioritizes quick delivery, helping customers get their products promptly, enhancing convenience and satisfaction.",
                  ];

                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 15,
                                offset: const Offset(0, 4),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imageList[index],
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          descriptionList[index],
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black87),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPage == index ? Colors.green : Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                if (currentPage > 0) {
                  pageController.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                }
              },
              backgroundColor: Colors.white,
              child: const Text(
                "Back",
                style: TextStyle(color: Colors.green),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                if (currentPage < 3) {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  openBottomSheet();
                }
              },
              backgroundColor: Colors.white,
              child: Text(
                currentPage < 3 ? "Next" : "Done",
                style: const TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
