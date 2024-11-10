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
    "https://images.news18.com/ibnlive/uploads/2024/07/untitled-design-2024-07-06t185226.317-2024-07-0b441cf3942f5e6fd9b1f32895302a16.jpg?impolicy=website&width=640&height=480",
    "https://m.economictimes.com/thumb/msid-95313710,width-1200,height-900,resizemode-4,imgsize-49604/virat-kohli.jpg",
    "https://img.jagranjosh.com/imported/images/E/GK/sachin-records.png",
    "https://c.ndtvimg.com/2022-11/s0f3r5d8_rahul-dravid-afp_625x300_01_November_22.jpg?im=FeatureCrop,algorithm=dnn,width=806,height=605",
    "https://static.toiimg.com/thumb/resizemode-4,width-1280,height-720,msid-111741230/111741230.jpg"
  ];
  List playNames = [
    "Mahendra Singh Dhoni",
    "Virat Kohli",
    "Sachin Tendulkar",
    "Rahul Dravid",
    "Rohit Sharma"
  ];
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "PlayerList",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                width: 300,
                height: 300,
                child: Image.network(
                  playerList[_index],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                playNames[_index],
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          children: [
            const SizedBox(
              width: 40,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () => {
                if (_index == 0)
                  {_index = playerList.length - 1}
                else
                  {_index--},
                setState(() {}),
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
            const SizedBox(
              width: 250,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                if (_index < playerList.length - 1) {
                  _index++;
                } else {
                  _index = 0;
                }
                ;
                setState(() {});
              },
              child: const Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}
