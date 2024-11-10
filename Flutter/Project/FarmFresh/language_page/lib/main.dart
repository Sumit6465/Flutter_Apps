import 'package:flutter/material.dart';
import 'package:language_page/info_slides.dart';
import 'package:language_page/language_page.dart';
import 'package:language_page/logo_page.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogoPage(),
    );
  }  
}