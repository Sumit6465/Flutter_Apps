import 'package:flutter/material.dart';
import 'package:language_page/Login_Signup_Screen/Login_page.dart';

void main() {
  runApp(const InfoSlides());
}

class InfoSlides extends StatelessWidget {
  const InfoSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InfoSlidesPage(),
    );
  }
}

class InfoSlidesPage extends StatefulWidget {
  const InfoSlidesPage({super.key});

  @override
  State<InfoSlidesPage> createState() => _InfoSlidesPageState();
}

class _InfoSlidesPageState extends State<InfoSlidesPage>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController();
  int currentPage = 0;
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween<Offset>(
      begin: const Offset(-0.5, 0.0), // Start off-screen to the left
      end: const Offset(0.5, 0.0), // End off-screen to the right
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Start the animation
    _controller.forward();

    // Trigger the animation in a loop for the forward swipe effect
    _controller.repeat(reverse: true);
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
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Title with enhanced styling
                const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    letterSpacing: 0.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                // Subtle Divider for better separation
                Container(
                  height: 2,
                  color: const Color.fromARGB(255, 35, 59, 36),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                ),
                const SizedBox(height: 10),

                // Improved login sections with background, padding, and shadow
                GestureDetector(
                    onTap: () {
                      print("Hii Sumit");
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: buildLoginSection(
                        "Shop Fresh Produce:", "Login as Customer")),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                        (route) => false);
                  },
                  child: buildLoginSection(
                      "Sell Fresh Produce:", "Login as Farmer/Seller"),
                ),
                const SizedBox(height: 20),
                buildLoginSection(
                    "Deliver Fresh Produce:", "Login as Delivery Person"),

                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget buildLoginSection(String labelText, String buttonText) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              labelText,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (route) => false);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size.fromHeight(50),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
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
                physics: const BouncingScrollPhysics(), // Bouncing physics
                itemBuilder: (context, index) {
                  if (index == 3) {
                    return buildLastPage();
                  } else {
                    return buildPageWithBounce(index);
                  }
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
    );
  }

  Widget buildPageWithBounce(int index) {
    final imageList = [
      "assets/customer to farmer 1.jpg",
      "assets/smart farmer.jpg",
      "assets/pre order1.jpg",
    ];

    final titleList = [
      "Direct Farmer-Customer Connection",
      "Dynamic Pricing Control",
      "Pre-Booking System",
    ];

    final descriptionList = [
      "The app facilitates a direct relationship between farmers and consumers, ensuring fair pricing and transparency.",
      "Farmers have the autonomy to set their product prices, allowing them to reflect the market conditions and maintain fair earnings.",
      "Farmers can post their product availability, allowing customers to pre-book items, ensuring they receive what they need when it's fresh.",
    ];

    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOutBack, // Bounce effect
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(
            height: 230,
          ),
          Column(
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
                style: const TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SlideTransition(
            position: _animation,
            child: const Text(
              " >>>>>",
              style: TextStyle(fontSize: 25, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLastPage() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(
            height: 230,
          ),
          Column(
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
                    "assets/fast delivery1.jpg",
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Fast Delivery",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              const Text(
                "The app prioritizes quick delivery, helping customers get their products promptly, enhancing convenience and satisfaction.",
                style: TextStyle(fontSize: 16, color: Colors.black87),
                textAlign: TextAlign.center,
              ),
              // const SizedBox(height: 50),
              // ElevatedButton(
              //   onPressed: () {},
              //   child: const Text(
              //     "Get Started",
              //     style: TextStyle(color: Colors.black),
              //   ),
              // ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              openBottomSheet();
              setState(() {});
            },
            child: const Text(
              "Get Started",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
