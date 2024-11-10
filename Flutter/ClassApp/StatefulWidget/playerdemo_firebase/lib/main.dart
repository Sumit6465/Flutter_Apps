import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:playerdemo_firebase/PlayerModal.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController playernameController = TextEditingController();
  TextEditingController jerseyNoController = TextEditingController();

  List<Playermodal> playerlist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PlayerInfo",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: playernameController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  hintText: "Enter PlayerName"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: jerseyNoController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide(width: 2)),
                  hintText: "Enter JerseyNo"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                if (playernameController.text.trim().isNotEmpty &&
                    jerseyNoController.text.trim().isNotEmpty) {
                  Map<String, dynamic> data = {
                    "playerName": playernameController.text.trim(),
                    "jerno": jerseyNoController.text.trim(),
                  };
                  FirebaseFirestore.instance.collection("playerInfo").add(data);
                  playernameController.clear();
                  jerseyNoController.clear();
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Data Added")));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Invalid data")));
                }
              },
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(child: Text("Add Data")),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: GestureDetector(
              onTap: () async {
                QuerySnapshot response = await FirebaseFirestore.instance
                    .collection("playersInfo")
                    .get();
                playerlist.clear();

                for (int i = 0; i < response.docs.length; i++) {
                  print("${response.docs[i]['playerName']}");

                  playerlist.add(Playermodal(
                      playerName: response.docs[i]['playerName'],
                      playerID: response.docs[i].id,
                      jerseyNo: response.docs[i]['jerNo']));
                  setState(() {});
                }
              },
              child: GestureDetector(
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(child: Text("Get Data")),
                ),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: playerlist.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  FirebaseFirestore.instance
                      .collection("playerInfo")
                      .doc(playerlist[index].playerID)
                      .delete();
                  playerlist.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Data Deleted"),
                  ));
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Player Name : ${playerlist[index].playerName}",
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Jersey No: ${playerlist[index].jerseyNo}",
                          style: const TextStyle(fontSize: 18))
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
