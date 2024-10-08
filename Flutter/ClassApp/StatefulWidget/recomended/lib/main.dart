import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Recomended",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 91, 135, 1)),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Color.fromARGB(255, 73, 72, 72),
          ),
          shape: const Border(
              bottom:
                  BorderSide(width: 2, color: Color.fromARGB(255, 73, 72, 72))),
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text("Start a new Career",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 40,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(0, 91, 135, 1),
                          ),
                          child: const Center(
                              child: Text("Data Science",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(0, 91, 135, 1),
                        ),
                        child: const Center(
                            child: Text("Machine Learning",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(0, 91, 135, 1),
                        ),
                        child: const Center(
                            child: Text("Apache space",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 165,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15),
                        height: 180,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[300],
                            image: const DecorationImage(
                                image: AssetImage("assets/assets1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        height: 180,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Data Science",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 0,
                            ),
                            const Text(
                              "Harvard University",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 66, 63, 63),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet eget nunc dictum est pentibus nunc.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                // const SizedBox(
                                //   width: 10,
                                // ),
                                Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    "Data Science",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(
                                            0, 91, 135, 1)),
                                  )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    "Machine Learning",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(
                                            0, 91, 135, 1)),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 165,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15),
                        height: 180,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[300],
                            image: const DecorationImage(
                                image: AssetImage("assets/assets1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        height: 180,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "AL & ML",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 0,
                            ),
                            const Text(
                              "Harvard University",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 66, 63, 63),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet eget nunc dictum est pentibus nunc.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                // const SizedBox(
                                //   width: 10,
                                // ),
                                Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    "Machine Learning",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(0, 91, 135, 1)),
                                  )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    "Decision Tree",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(0, 91, 135, 1)),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 165,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15),
                        height: 180,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[300],
                            image: const DecorationImage(
                                image: AssetImage("assets/assets1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        height: 180,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Big Data",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 0,
                            ),
                            const Text(
                              "Harvard University",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 66, 63, 63),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet eget nunc dictum est pentibus nunc.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                // const SizedBox(
                                //   width: 10,
                                // ),
                                Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    "Big Data",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(
                                            0, 91, 135, 1)),
                                  )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    "Apache Spark",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(
                                            0, 91, 135, 1)),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 165,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(15),
                        height: 180,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red[300],
                            image: const DecorationImage(
                                image: AssetImage("assets/assets1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        height: 180,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Devops",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 0,
                            ),
                            const Text(
                              "Harvard University",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 66, 63, 63),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet eget nunc dictum est pentibus nunc.",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                // const SizedBox(
                                //   width: 10,
                                // ),
                                Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    "Docker",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(
                                            0, 91, 135, 1)),
                                  )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: 100,
                                  color: Colors.grey,
                                  child: const Center(
                                      child: Text(
                                    "Kubernetes",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: const Color.fromRGBO(
                                            0, 91, 135, 1)),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.amber,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
