import "package:flutter/material.dart";

void main() {
  runApp(const PlayerInfo());
}

class PlayerInfo extends StatefulWidget {
  const PlayerInfo({super.key});

  @override
  State createState() => PlayerInfoState();
}

class PlayerInfoState extends State {
  List playerList = [
    "https://cdn.britannica.com/25/222725-050-170F622A/Indian-cricketer-Mahendra-Singh-Dhoni-2011.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Virat_Kohli_in_PMO_New_Delhi.jpg/220px-Virat_Kohli_in_PMO_New_Delhi.jpg",
    "https://img.jagranjosh.com/imported/images/E/GK/sachin-records.png",
    "https://c.ndtvimg.com/2022-11/s0f3r5d8_rahul-dravid-afp_625x300_01_November_22.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605",
    "https://isport.in/wp-content/uploads/KL-Rahul.jpg"
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PlayerList"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Image.network(playerList[_index]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            if (_index < playerList.length - 1) {_index++} else {_index = 0},
            setState(() {}),
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
