import 'package:flutter/material.dart';
import '../DashBoard/dashboard.dart';
import 'order_summery.dart';

class Product extends StatefulWidget {
  const Product({super.key});
  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 60,),
          child: Text(
            "My Orde",
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
              MaterialPageRoute(builder: (context) => const Dashboard_Page()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 8),
                  child: Text(
                    "My Order",
                    style: TextStyle(
                        color: Color(0xff1c3a60),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          Divider(
            height: 2,
            color: Color(0xff1c3a60),
          ),
          //TODO :: Here we make the DataTable
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: 30,
                columns: [
                  DataColumn(
                      label: Text(
                    "Sr No",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  DataColumn(
                      label: Text(
                    "Order Id",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  DataColumn(
                      label: Text(
                    "Images",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  DataColumn(
                      label: Text(
                    "Amount",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  DataColumn(
                      label: Text(
                    "Action",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("#128754")),
                    DataCell(Image.asset(
                      "assets/Medicens_icons/product_1.png",
                      width: 40,
                      height: 40,
                    )),
                    DataCell(Text("430")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Order_Summery()));

                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1c3a60)
                          ),
                          child: Text(
                            "View Summery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("2")),
                    DataCell(Text("#128755")),
                    DataCell(Image.asset(
                      "assets/Medicens_icons/product_2.png",
                      width: 40,
                      height: 40,
                    )),
                    DataCell(Text("500")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Order_Summery()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1c3a60),
                          ),
                          child: Text(
                            "View Summery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),

                  DataRow(cells: [
                    DataCell(Text("3")),
                    DataCell(Text("#128756")),
                    DataCell(Image.asset(
                      "assets/Medicens_icons/product_5.png",
                      width: 40,
                      height: 40,
                    )),
                    DataCell(Text("504")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Order_Summery()));

                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1c3a60),
                          ),
                          child: Text(
                            "View Summery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("4")),
                    DataCell(Text("#128723")),
                    DataCell(Image.asset(
                      "assets/Medicens_icons/product_4.png",
                      width: 40,
                      height: 40,
                    )),
                    DataCell(Text("600")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Order_Summery()));

                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1c3a60),
                          ),
                          child: Text(
                            "View Summery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("5")),
                    DataCell(Text("#128757")),
                    DataCell(Image.asset(
                      "assets/Medicens_icons/product_6.png",
                      width: 40,
                      height: 40,
                    )),
                    DataCell(Text("520")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Order_Summery()));

                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1c3a60),
                          ),
                          child: Text(
                            "View Summery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),
                ],



















                /* dataRowMinHeight: 10,
                columnSpacing: 5,
                // dataRowMaxHeight: 25,
                showCheckboxColumn: true,*/
                // columns:[
                //   DataColumn(label: Text("Sr No")),
                //   DataColumn(label: Text("Order Id")),
                //   DataColumn(label: Text("Images")),
                //   DataColumn(label: Text("Amount")),
                //   DataColumn(label: Text("Action")),
                // ], rows: [],
                // rows:[
                //   DataRow(
                //     cells: [
                //       DataCell(Text("1")),
                //       DataCell(Text("#RT2548")),
                //       DataCell(Image(image: AssetImage("assets/Medicens_icons/product_4.png"))),
                //       DataCell(Text("no")),
                //       DataCell(Text("778")),
                //     ],
                //   ),
                //   DataRow(
                //     cells: [
                //       DataCell(Text("1")),
                //       DataCell(Text("#TH327")),
                //       DataCell(Image(image: AssetImage("assets/Medicens_icons/product_4.png"))),
                //       DataCell(Text("778")),
                //       DataCell(Text("Yes")),
                //     ],
                //   ),
                //   DataRow(
                //     cells: [
                //       DataCell(Text("1")),
                //       DataCell(Text("#TH327")),
                //       DataCell(Image(image: AssetImage("assets/Medicens_icons/product_4.png"))),
                //       DataCell(Text("778")),
                //       DataCell(Text("Yes")),
                //     ],
                //   ),
                //
                //   DataRow(
                //     cells: [
                //       DataCell(Text("1")),
                //       DataCell(Text("#TH327")),
                //       DataCell(Image(image: AssetImage("assets/Medicens_icons/product_4.png"))),
                //       DataCell(Text("778")),
                //       DataCell(Text("Yes")),
                //     ],
                //   ),
                //   DataRow(
                //     cells: [
                //       DataCell(Text("1")),
                //       DataCell(Text("#TH327")),
                //       DataCell(Image(image: AssetImage("assets/Medicens_icons/product_4.png"))),
                //       DataCell(Text("778")),
                //       DataCell(Text("Yes")),
                //     ],
                //   )
                // ],
              ),
            ),
          ),

          // Container(
          //   height: 40,
          //   width: 420,
          //   color: Color(0xff1c3a60),
          //   child: Padding(
          //     padding: EdgeInsets.all(9),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "Sr.No",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 12,
          //               fontWeight: FontWeight.normal),
          //         ),
          //         Text(
          //           "Order Id",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 12,
          //               fontWeight: FontWeight.normal),
          //         ),
          //         Text(
          //           "Images",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 12,
          //               fontWeight: FontWeight.normal),
          //         ),
          //         Text(
          //           "Amount ",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 12,
          //               fontWeight: FontWeight.normal),
          //         ),
          //         Text(
          //           "Action",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 12,
          //               fontWeight: FontWeight.normal),
          //         ),
          //         Text(
          //           "Add",
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 12,
          //               fontWeight: FontWeight.normal),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(height: 9),
          // Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "  1",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         Text(
          //           "        #RT2548",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 14,
          //         ),
          //         Image(
          //           image: AssetImage(
          //             "assets/Medicens_icons/product_1.png",
          //           ),
          //           height: 30,
          //           width: 30,
          //         ),
          //         Text(
          //           "       ₹ 300",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 33,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) =>
          //                         const Add_Product_Conform(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "View",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 2,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => const Add_Product(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "Add",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // Divider(),
          // SizedBox(
          //   height: 9,
          // ),
          // Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "  2",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         Text(
          //           "        #RT2548",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 14,
          //         ),
          //         Image(
          //           image: AssetImage(
          //             "assets/Medicens_icons/product_2.png",
          //           ),
          //           height: 30,
          //           width: 30,
          //         ),
          //         Text(
          //           "       ₹ 300",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 33,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) =>
          //                         const Add_Product_Conform(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "View",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 2,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => const Add_Product(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "Add",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // Divider(),
          // SizedBox(
          //   height: 9,
          // ),
          // Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "  3",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         Text(
          //           "        #RT6587",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 14,
          //         ),
          //         Image(
          //           image: AssetImage(
          //             "assets/Medicens_icons/product_3.png",
          //           ),
          //           height: 30,
          //           width: 30,
          //         ),
          //         Text(
          //           "       ₹ 300",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 33,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) =>
          //                         const Add_Product_Conform(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "View",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 2,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => const Add_Product(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "Add",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // Divider(),
          // SizedBox(
          //   height: 9,
          // ),
          // Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "  4",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         Text(
          //           "        #RT9646",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 14,
          //         ),
          //         Image(
          //           image: AssetImage(
          //             "assets/Medicens_icons/product_4.png",
          //           ),
          //           height: 30,
          //           width: 30,
          //         ),
          //         Text(
          //           "       ₹ 300",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 33,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) =>
          //                         const Add_Product_Conform(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "View",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 2,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => const Add_Product(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "Add",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // Divider(),
          // SizedBox(
          //   height: 9,
          // ),
          // Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "  5",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         Text(
          //           "        #RT9834",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 14,
          //         ),
          //         Image(
          //           image: AssetImage(
          //             "assets/Medicens_icons/product_5.png",
          //           ),
          //           height: 30,
          //           width: 30,
          //         ),
          //         Text(
          //           "       ₹ 300",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 33,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) =>
          //                         const Add_Product_Conform(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "View",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 2,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => const Add_Product(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "Add",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // Divider(),
          // SizedBox(
          //   height: 9,
          // ),
          // Column(
          //   children: [
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Text(
          //           "  6",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         Text(
          //           "        #RT2354",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 14,
          //         ),
          //         Image(
          //           image: AssetImage(
          //             "assets/Medicens_icons/product_6.png",
          //           ),
          //           height: 30,
          //           width: 30,
          //         ),
          //         Text(
          //           "       ₹ 300",
          //           style: TextStyle(color: Color(0xff535353)),
          //         ),
          //         SizedBox(
          //           width: 33,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => const Order_Summery(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "View",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 2,
          //         ),
          //         Container(
          //           child: SizedBox(
          //             height: 30,
          //             width: 90,
          //             child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => const Add_Product(),
          //                   ),
          //                 );
          //               },
          //               child: Text(
          //                 "Add",
          //                 style: TextStyle(
          //                     fontSize: 11,
          //                     fontWeight: FontWeight.bold,
          //                     color: Colors.white),
          //               ),
          //               style: ElevatedButton.styleFrom(
          //                 backgroundColor: Color(0xff1c3a60),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          // Divider(),
          // SizedBox(
          //   height: 6,
          // ),
        ],
      ),
    );
  }
}
