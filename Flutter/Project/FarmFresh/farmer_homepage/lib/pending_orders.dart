import 'package:farmer_homepage/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PendingOrders());
}

class PendingOrders extends StatefulWidget {
  const PendingOrders({super.key});

  @override
  State<PendingOrders> createState() => _PendingOrdersState();
}

class _PendingOrdersState extends State<PendingOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Container(
          height: 200,
          width: 300,
          color: Colors.amber,
        );
      },
    ));
  }
}
