import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double userScore = 85; // Example score; make it dynamic as needed

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          // Background violet section
          Container(
            height: 260,
            decoration: const BoxDecoration(
              color: Color(0xFF1F2E58),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    Icon(Icons.qr_code, color: Colors.white),
                  ],
                ),
                SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg', // Replace with your profile image URL
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Anna Jones',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Level 10',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          // Main content
          Positioned(
            top: 180, // Adjusted to ensure overlap on violet background
            left: 20,
            right: 20,
            child: Column(
              children: [
                // Points Section with overlap and custom progress indicator
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Your Points',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        '+20 since last week',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomProgressIndicator(userScore: userScore),
                      const SizedBox(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.yellow,
                              ),
                              SizedBox(height: 5),
                              Text('HTML/CSS'),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.blue,
                              ),
                              SizedBox(height: 5),
                              Text('Graphic design'),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(height: 5),
                              Text('UX'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Classmates Section
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Classmates',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'All interested in the same field! Go on, get social!',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg', // Replace with your image URL
                            ),
                          ),
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg', // Replace with your image URL
                            ),
                          ),
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg', // Replace with your image URL
                            ),
                          ),
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                              'https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w1200/2023/10/free-images.jpg', // Replace with your image URL
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(10),
                              backgroundColor: const Color(0xFF1F2E58),
                            ),
                            child: const Text(
                              'View all',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
