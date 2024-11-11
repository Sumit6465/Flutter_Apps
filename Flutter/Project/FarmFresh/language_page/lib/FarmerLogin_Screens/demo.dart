import 'package:flutter/material.dart';
import 'package:language_page/FarmerLogin_Screens/ProfilePage.dart';
import 'package:language_page/FarmerLogin_Screens/farmer_homepage.dart';
import 'package:language_page/FarmerLogin_Screens/main.dart';
import 'package:language_page/FarmerLogin_Screens/uploadPage.dart';

import 'NewsPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [Page1(), Page2(), Page3(), Page4(), Page5()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        color: Colors.green,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.military_tech,
                  size: 25,
                  color: Colors.white,
                ),
                label: 'LeaderBoard'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.upload,
                  size: 25,
                  color: Colors.white,
                ),
                label: 'Upload'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25,
                  color: Colors.white,
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper, size: 25, color: Colors.white),
                label: "News"),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent, // Background color of the navbar
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Farmer_HomePage();
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const LeaderBoard();
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const UploadPage();
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MyProfilePage();
  }
}

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const NewsPage();
  }
}
