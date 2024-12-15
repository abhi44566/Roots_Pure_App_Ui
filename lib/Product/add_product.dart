import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';
import 'package:roots_pure/Product/my_Order.dart';

import '../Sign_in_page/editProdile.dart';

class Add_Product extends StatefulWidget {
  const Add_Product({super.key});
  @override
  State<Add_Product> createState() => _Add_ProductState();
}

class _Add_ProductState extends State<Add_Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        // foregroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            "Add",
            style: TextStyle(color: Colors.white),
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
              MaterialPageRoute(builder: (context) => const Product()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
                padding: const EdgeInsets.all(18),
                child: Container(
                  height: 65,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfffda005),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.all(8.0), // Reduced padding
                              child: Text(
                                "Grand Total: ₹ 2548",
                                style: TextStyle(
                                  fontSize: 16, // Reduced font size
                                  color: Color(0xfffcfdfb),
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow:
                                    TextOverflow.ellipsis, // Avoid overflow
                                textAlign: TextAlign.center, // Center text
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 180,
            ),
            child: Text(
              "Choose Customer",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 215,
                  child: TextField(
                    style: TextStyle(color: Colors.grey.shade100),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(color: Colors.grey)),
                        filled: true,
                        fillColor: Color(0xfff4f9ff),
                        prefixIcon: Icon(Icons.phone_outlined),
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide:
                                BorderSide(color: Colors.grey.shade100)),
                        hintText: 'Enter Mobile Number'),
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: 120,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText:
                          "SEARCH", // ElevatedButton का text "SEARCH" यहाँ hintText में है
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      filled: true, // Background color के लिए
                      fillColor:
                          Color(0xff1c3a60), // Background color वही रखा गया है
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            12), // Border Radius वही रखा गया है
                        borderSide:
                            BorderSide.none, // Border को invisible करने के लिए
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white, // Text का color
                      fontSize: 16, // Font size
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [],
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Name",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  "Mobile Number",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Text(
                  "Select",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Abhishek Kannaujiya",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "+91 8175052643",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.stop_circle_outlined,
                  color: Color(0xff1c3a60),
                )
              ],
            ),
          ),
          SizedBox(
              height: 50,
              width: 342,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfile()),
                    );
                  },

                style: ElevatedButton.styleFrom(),
                  // style: ElevatedButton.styleFrom(
                  //     backgroundColor: Color(0xff1c3a60),
                  //     maximumSize: Size(double.infinity, 50),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(12),
                  //     )),
                  child: Text(
                    "Place Order",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ))),
        ],
      ),
    );
  }
}
