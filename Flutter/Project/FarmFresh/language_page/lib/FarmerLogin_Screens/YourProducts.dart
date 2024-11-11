import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourProduct_Amount extends StatefulWidget {
  const YourProduct_Amount({super.key});

  @override
  State<YourProduct_Amount> createState() => _YourProduct_AmountState();
}

class _YourProduct_AmountState extends State<YourProduct_Amount> {
  List<Map<String, String>> items = [
    {
      "title": "Ratnagiri Hapus",
      "price": "\$300",
      "order": "Order No.:23043",
      "date": "26 June 2024"
    },
    {
      "title": "Alphonso Mango",
      "price": "\$500",
      "order": "Order No.:23044",
      "date": "15 July 2024"
    },
    {
      "title": "Kesar Mango",
      "price": "\$400",
      "order": "Order No.:23045",
      "date": "12 Aug 2024"
    },
    // Add more items as needed
  ];

  List<Map<String, String>> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items; // Initially display all items
  }

  void filterSearchResults(String query) {
    List<Map<String, String>> results = [];
    if (query.isEmpty) {
      results = items;
    } else {
      results = items
          .where((item) =>
              item["title"]!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      filteredItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    double totalAmount = items.fold(
        0, (sum, item) => sum + double.parse(item['price']!.substring(1)));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Products",
          style: GoogleFonts.quicksand(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.green,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    right: 30,
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextField(
                        onChanged: filterSearchResults,
                        decoration: InputDecoration(
                          hintText: "Search here",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 200,
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  final item = filteredItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      width: 380,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Colors.lightGreen[100]!],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 10,
                            blurStyle: BlurStyle.normal,
                            color: Colors.green,
                            spreadRadius: 2,
                            offset: Offset(0, 2),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 20),
                          ClipOval(
                            child: Image.asset(
                              "assets/MyPhotoValid.jpg",
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text(
                                      item["title"]!,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Spacer(),
                                    Text(
                                      item["price"]!,
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    ),
                                    const SizedBox(width: 20),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(item["order"]!,
                                        style: GoogleFonts.inter(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(item["date"]!,
                                        style: GoogleFonts.inter(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.green,
        child: Row(
          children: [
            const SizedBox(width: 20),
            Text("TotalAmount : \$${totalAmount.toStringAsFixed(2)}",
                style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
