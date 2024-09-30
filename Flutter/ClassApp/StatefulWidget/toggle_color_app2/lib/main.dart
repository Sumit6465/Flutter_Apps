import "package:flutter/material.dart";

void main() {
  runApp(const ToggleColor());
}

class ToggleColor extends StatefulWidget {
  const ToggleColor({super.key});

  @override
  State createState() => ToggleColorState();
}

class ToggleColorState extends State {
  bool colorChange = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text("ToggleColor"),
            centerTitle: true,
            backgroundColor: colorChange ? Colors.blue : Colors.red),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: colorChange ? Colors.red : Colors.black,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => {
                  if (colorChange == true)
                    {colorChange = false}
                  else
                    {colorChange = true},
                  setState(() {}),
                },
            child: const Text("Toggle")),
      ),
    );
  }
}
