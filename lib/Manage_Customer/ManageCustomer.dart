import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';
import 'package:roots_pure/Manage_Customer/add_customer.dart';
import 'package:roots_pure/Sign_in_page/editProdile.dart';
class Manage_Customer extends StatefulWidget {
  const Manage_Customer({super.key});
  @override
  State<Manage_Customer> createState() => _Manage_CustomerState();
}
class _Manage_CustomerState extends State<Manage_Customer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Manage Customer",
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
      body:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 180,
                        child: TextField(
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xfff4f9ff),
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(1)),
                            hintText: 'Search Customers',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                          height: 40,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Editprodile()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff1c3a60),
                                  maximumSize: Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )),
                              child: Text(
                                "SEARCH",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                              ))),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                          height: 40,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Add_Customer()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1c3a60),
                                maximumSize: Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Wrap(
                                children: [
                                  Image(
                                    image: AssetImage(
                                      "assets/Icons/add.png",
                                    ),
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left:),
                                  //   child: Text("Add", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  // )
                                ],
                              ))),
                ],
                
              ),
            ),
            //TODO:: here is the made of datatable
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  // dataRowMaxHeight:10,
                  columnSpacing: 30,
                  // border: TableBorder(borderRadius: BorderRadius.circular(20)),
                  columns: [
                    DataColumn(
                        label: Text(
                          "Sr",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    DataColumn(
                        label: Text(
                          "Name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    DataColumn(
                        label: Text(
                          "Phone Number",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    DataColumn(
                        label: Text(
                          "Gst",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    DataColumn(
                        label: Text(
                          "Update",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    DataColumn(
                        label: Text(
                          "Delete",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ],
                  rows:[
                    DataRow(cells: [
                      DataCell(Text("1")),
                      DataCell(Text("Abhishek")),
                      DataCell(Text("8175052643")),
                      DataCell(Text("430")),
                      DataCell(Image.asset("assets/images/edit.png", height: 40, width: 40,),),
                      DataCell(Image.asset("assets/images/delete.png", height: 40, width: 40,),),

                    ]),
                    DataRow(cells: [
                      DataCell(Text("2")),
                      DataCell(Text("Rajeev")),
                      DataCell(Text("9990717739")),
                      DataCell(Text("500")),
                      DataCell(Image.asset("assets/images/edit.png", height: 40, width: 40,),),
                      DataCell(Image.asset("assets/images/delete.png", height: 40, width: 40,),),
                    ]),

                    DataRow(cells: [
                      DataCell(Text("3")),
                      DataCell(Text("Rajan")),
                      DataCell(Text("7084421065")),
                      DataCell(Text("504")),
                      DataCell(Image.asset("assets/images/edit.png", height: 40, width: 40,),),
                      DataCell(Image.asset("assets/images/delete.png", height: 40, width: 40,),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("4")),
                      DataCell(Text("Ravi")),
                      DataCell(Text("9088905527")),
                      DataCell(Text("600")),
                      DataCell(Image.asset("assets/images/edit.png", height: 40, width: 40,),),
                      DataCell(Image.asset("assets/images/delete.png", height: 40, width: 40,),),
                    ]),
                    DataRow(cells: [
                      DataCell(Text("5")),
                      DataCell(Text("Tanush")),
                      DataCell(Text("8055668203")),
                      DataCell(Text("504")),
                      DataCell(Image.asset("assets/images/edit.png", height: 40, width: 40,),),
                      DataCell(Image.asset("assets/images/delete.png", height: 40, width: 40,),),
                    ]),
                  ],

                  //    dataRowMinHeight: 10,
                  // columnSpacing: 5,
                  // dataRowMaxHeight: 25,
                  // showCheckboxColumn: true,
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
            //   height: 44,
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
            //           "Name",
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 12,
            //               fontWeight: FontWeight.normal),
            //         ),
            //         Text(
            //           "Phone No.",
            //           style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 12,
            //               fontWeight: FontWeight.normal),
            //         ),
            //         Text(
            //           "GST",
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
            //
            //       ],
            //     ),
            //   ),
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("1", style: TextStyle(color: Color(0xff5e5e5e)),),
            //     Text("Lalu Kannaujiya" ,style: TextStyle(color: Color(0xff5e5e5e))),
            //     Text("8175052643" ,style: TextStyle(color: Color(0xff5e5e5e))),
            //     Text("07FDSHY548" ,style: TextStyle(color: Color(0xff5e5e5e))),
            //     Image(image: AssetImage("assets/Icons/edit.png")),
            //     Image(image: AssetImage("assets/Icons/delete.png")),
            //   ],
            // )
          ],
        ),

    );
  }
}
