import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _MyApp();
}

TextEditingController txt = TextEditingController();
String? names = "";
List L1 = [];

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "To-Do App",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Enter Your Name :",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: txt,
                style: const TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9)),
                  labelText: "Enter your Name",
                  hintStyle: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              onTap: () {
                setState(() {
                  names = txt.text;
                  print("Myname:$names");
                  L1.add(names!);
                  print("L1:${L1.length}");

                  txt.clear();

                  // print("Names:$names");
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: L1.length,
                itemBuilder: (context, index) {
                  return Text(
                    "Names:${L1[index]}",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
