import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  String str1 = "";
  String str2 = "";
  List nameList = [];
  List compName = [];
  List<Map> l1 = [];
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("INFO"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              // Container(
              //   padding: EdgeInsets.only(left: 30),
              //   child: const Text(
              //     "Name:",
              //     style:
              //         TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
              //     textAlign: TextAlign.start,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: txt1,
                  decoration: const InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.black))),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: txt2,
                  decoration: const InputDecoration(
                      hintText: "Company Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.black))),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  str1 = txt1.text;
                  nameList.add(str1);
                  str2 = txt2.text;
                  compName.add(str2);

                  l1.add({"name": txt1.text, "company": txt2.text});

                  print(nameList);
                  print(compName);
                  txt1.clear();
                  txt2.clear();
                  setState(() {});
                },
                child: Container(
                  //margin: EdgeInsets.all(20),
                  height: 30,
                  width: 60,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Center(
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                itemCount: l1.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      height: 100,
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Name:${l1[index]["name"]}",
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                "CompanyName:${l1[index]["company"]}",
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
