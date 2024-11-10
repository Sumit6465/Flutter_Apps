import 'package:flutter/material.dart';
import 'package:language_page/info_slides.dart';

class LangPage extends StatefulWidget {
  const LangPage({super.key});

  @override
  State<LangPage> createState() => _LangPageState();
}

class _LangPageState extends State<LangPage> {
  String _selectedItem = 'English';
  String? _selectedLanguage; 

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 170), 
              const Text(
                "Language",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: 300,
                padding: const EdgeInsets.only(left: 30, right: 30, top: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _selectedItem,
                      style: const TextStyle(fontSize: 18, color: Colors.green),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Choose from:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              // const SizedBox(height: 4),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.only(left:40.0, right: 40.0, top:15, bottom: 15),
                  childAspectRatio: 2,
                  children: [
                    _buildLanguageOption("English"),
                    _buildLanguageOption("Hindi"),
                    _buildLanguageOption("Marathi"),
                    _buildLanguageOption("Tamil"),
                    _buildLanguageOption("Panjabi"),
                    _buildLanguageOption("Bangali"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const InfoSlidesPage();
          }));
        },
        backgroundColor: Colors.white,
        child: const Text(
          "Next",
          style: TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageOption(String language) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItem = language;
          _selectedLanguage = language; 
        });
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: _selectedLanguage == language ? Colors.green : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            language,
            style: TextStyle(
              fontSize: 18,
              color: _selectedLanguage == language ? Colors.white : Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
