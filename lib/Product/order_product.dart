import 'package:flutter/material.dart';
import 'package:roots_pure/Product/add_product.dart';
import 'package:roots_pure/Product/my_Order.dart';
import 'package:roots_pure/Sign_in_page/editProdile.dart';
class Add_Product_Conform extends StatefulWidget {
  const Add_Product_Conform({super.key});
  @override
  State<Add_Product_Conform> createState() => _Add_Product_ConformState();
}
class _Add_Product_ConformState extends State<Add_Product_Conform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text(
              "Products",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Color(0xff1c3a60),
          leading: InkWell(
            onTap: (){


            },
            child: IconButton(
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
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              SizedBox(height: 50,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 40,
                  width: 420,
                  color: Color(0xff1c3a60),
                  child: Padding(
                    padding: EdgeInsets.all(9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sr.No",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Image",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Name",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Price",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Qty",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          "Action",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "     1",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/Medicens_icons/product_2.png",
                            ),
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "  Product Name",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Text(
                            "       ₹ 300",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                                color: Color(
                                  0xff535353,
                                ),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 33,
                          ),

                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            child: SizedBox(
                              height: 30,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Add_Product(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff1c3a60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "     2",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/Medicens_icons/product_6.png",
                            ),
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "  Product Name",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Text(
                            "       ₹ 300",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "9",
                            style: TextStyle(
                                color: Color(
                                  0xff535353,
                                ),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 33,
                          ),
                          // Container(
                          //   child: SizedBox(
                          //     height: 30,
                          //     width: 90,
                          //     child: ElevatedButton(onPressed: (){
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => const Add_Product_Conform(),
                          //         ),
                          //       );
                          //     },child: Text("View",
                          //       style: TextStyle(fontSize:11, fontWeight: FontWeight.bold, color: Colors.white),),
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Color(0xff1c3a60),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            child: SizedBox(
                              height: 30,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Add_Product(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff1c3a60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "     3",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/Medicens_icons/product_5.png",
                            ),
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "  Product Name",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Text(
                            "       ₹ 300",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                                color: Color(
                                  0xff535353,
                                ),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 33,
                          ),
                          // Container(
                          //   child: SizedBox(
                          //     height: 30,
                          //     width: 90,
                          //     child: ElevatedButton(onPressed: (){
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => const Add_Product_Conform(),
                          //         ),
                          //       );
                          //     },child: Text("View",
                          //       style: TextStyle(fontSize:11, fontWeight: FontWeight.bold, color: Colors.white),),
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Color(0xff1c3a60),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            child: SizedBox(
                              height: 30,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Add_Product(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff1c3a60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "     4",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/Medicens_icons/product_4.png",
                            ),
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "  Product Name",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Text(
                            "       ₹ 300",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "3",
                            style: TextStyle(
                                color: Color(
                                  0xff535353,
                                ),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 33,
                          ),
                          // Container(
                          //   child: SizedBox(
                          //     height: 30,
                          //     width: 90,
                          //     child: ElevatedButton(onPressed: (){
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => const Add_Product_Conform(),
                          //         ),
                          //       );
                          //     },child: Text("View",
                          //       style: TextStyle(fontSize:11, fontWeight: FontWeight.bold, color: Colors.white),),
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Color(0xff1c3a60),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            child: SizedBox(
                              height: 30,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Add_Product(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff1c3a60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "     5",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/Medicens_icons/product_2.png",
                            ),
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "  Product Name",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Text(
                            "       ₹ 300",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "6",
                            style: TextStyle(
                                color: Color(
                                  0xff535353,
                                ),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 33,
                          ),
                          // Container(
                          //   child: SizedBox(
                          //     height: 30,
                          //     width: 90,
                          //     child: ElevatedButton(onPressed: (){
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => const Add_Product_Conform(),
                          //         ),
                          //       );
                          //     },child: Text("View",
                          //       style: TextStyle(fontSize:11, fontWeight: FontWeight.bold, color: Colors.white),),
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Color(0xff1c3a60),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            child: SizedBox(
                              height: 30,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Add_Product(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff1c3a60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "     6",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Image(
                            image: AssetImage(
                              "assets/Medicens_icons/product_6.png",
                            ),
                            height: 30,
                            width: 30,
                          ),
                          Text(
                            "  Product Name",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Text(
                            "       ₹ 300",
                            style: TextStyle(color: Color(0xff535353)),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            "7",
                            style: TextStyle(
                                color: Color(
                                  0xff535353,
                                ),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: Color(0xff1c3a60),
                          ),
                          SizedBox(
                            width: 33,
                          ),

                          // Container(
                          //   child: SizedBox(
                          //     height: 30,
                          //     width: 90,
                          //     child: ElevatedButton(onPressed: (){
                          //       Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //           builder: (context) => const Add_Product_Conform(),
                          //         ),
                          //       );
                          //     },child: Text("View",
                          //       style: TextStyle(fontSize:11, fontWeight: FontWeight.bold, color: Colors.white),),
                          //       style: ElevatedButton.styleFrom(
                          //         backgroundColor: Color(0xff1c3a60),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            child: SizedBox(
                              height: 30,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Add_Product(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff1c3a60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
    Column(
      children: [
        Text("Grand Total", style: TextStyle(color: Colors.white),)
      ],
        )
            ],
          ),
        ));
  }
}
