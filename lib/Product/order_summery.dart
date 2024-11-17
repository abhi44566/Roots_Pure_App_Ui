import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';

class Order_Summery extends StatefulWidget {
  const Order_Summery({super.key});
  @override
  State<Order_Summery> createState() => _Order_SummeryState();
}

class _Order_SummeryState extends State<Order_Summery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Order Summery",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xff1c3a60),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard_Page()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Summery",
                  style: TextStyle(
                      color: Color(0xff1c3a60),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Order Id",
                  style: TextStyle(color: Color(0xff1c3a60), fontSize: 18),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
