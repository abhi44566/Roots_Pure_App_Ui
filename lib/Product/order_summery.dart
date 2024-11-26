import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';

import '../Sign_in_page/editProdile.dart';
import 'add_product.dart';

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
                      fontSize: 17,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Order Id",
                  style: TextStyle(color: Color(0xff1c3a60), fontSize: 16),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: Text(
                "#RT5487",
                style: TextStyle(color: Color(0xff1c3a60)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First Row
                  Row(
                    children: [
                      Image.asset(
                        "assets/Medicens_icons/product_1.png",
                        height: 60,
                        width: 50,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff1c3a60))),
                          Text("Quantity : 2",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                          Text("Size : 250 ml",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "₹ 120",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff1c3a60)), // Change color as needed
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Medicens_icons/product_2.png",
                        height: 60,
                        width: 50,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff1c3a60))),
                          Text("Quantity : 5",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                          Text("Size : 250 ml",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "₹ 1867",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff1c3a60)), // Change color as needed
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Medicens_icons/product_3.png",
                        height: 60,
                        width: 50,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff1c3a60))),
                          Text("Quantity : 2",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                          Text("Size : 250 ml",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "₹ 250",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff1c3a60)), // Change color as needed
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Medicens_icons/product_4.png",
                        height: 60,
                        width: 50,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff1c3a60))),
                          Text("Quantity : 4",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                          Text("Size : 250 ml",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "₹ 100",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff1c3a60)), // Change color as needed
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Medicens_icons/product_5.png",
                        height: 60,
                        width: 50,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Color(0xff1c3a60))),
                          Text("Quantity : 5",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                          Text("Size : 250 ml",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey)),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "₹ 2320",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color(0xff1c3a60)), // Change color as needed
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Sub  Total",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text("₹ 180.70",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    "assets/Icons/dot_line.png",
                    color: Colors.grey.shade300,
                    height: 6,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "GST 18%",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text("₹ 10.70",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    "assets/Icons/dot_line.png",
                    color: Colors.grey.shade300,
                    height: 6,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "Grand  Total",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text("₹ 180.70",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w700))
                    ],
                  ),
                  SizedBox(height: 70,),
                  SizedBox(
                      height: 46,
                      width: 340,

                      child: ElevatedButton(
                          onPressed: (
                              ) {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Add_Product()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff1c3a60),
                              maximumSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              )
                          ),
                          child: Text(
                            " CONFROM ORDER",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
