import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwipeButtonDemo(),
    );
  }
}

class SwipeButtonDemo extends StatefulWidget {
  @override
  _SwipeButtonDemoState createState() => _SwipeButtonDemoState();
}

class _SwipeButtonDemoState extends State<SwipeButtonDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _animation = Tween<Offset>(begin: Offset.zero, end: const Offset(0.2, 0.2))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    // Trigger the animation in a loop for the forward swipe effect
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Punam Work')),
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: const Text(
            "Swipe >>>>>",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
