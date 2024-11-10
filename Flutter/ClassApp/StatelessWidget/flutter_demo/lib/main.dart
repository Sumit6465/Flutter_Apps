import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/playerModal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCkZxKOnD9tkoNFYpwEOZKG1UyCD0_Cbhg",
      appId: "1:746920493808:android:9dd26c888d3adaee2ef835",
      messagingSenderId: "746920493808",
      projectId: "flutterdemo-3e264",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
