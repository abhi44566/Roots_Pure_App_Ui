import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/ManageCustomer.dart';
import 'package:roots_pure/Product/add_product.dart';
class Add_Customer extends StatefulWidget {
  const Add_Customer({super.key});
  @override
  State<Add_Customer> createState() => _Add_CustomerState();
}
class _Add_CustomerState extends State<Add_Customer> {
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
              MaterialPageRoute(builder: (context) => const Manage_Customer()),
            );
          },
        ),
        ),
       body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(11),
              child: Text(
                "Add Customers Details",
                style: TextStyle(
                    color: Color(0xff1c3a60),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
           SizedBox(
             height: 80,
             child:  Padding(
               padding: const EdgeInsets.all(10),
               child: TextField(
                 decoration: InputDecoration(
                   
                   hintText: "Customer Name",
                     prefixIcon: Icon(Icons.person_outline_outlined),
                     prefixIconColor: Color(0xff1c3a60),
                     hintStyle: TextStyle(color: Colors.grey),
                     border: OutlineInputBorder()
                 ),
               ),
             ),
           ),
            SizedBox(
              height: 80,
              child:  Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      prefixIcon: Icon(Icons.phone_android),
                      prefixIconColor: Color(0xff1c3a60),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(10),
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child:  Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email Id",
                      prefixIcon: Icon(Icons.email_outlined),
                      prefixIconColor: Color(0xff1c3a60),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(10),)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child:  Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "GST Number",
                      prefixIcon: Icon(Icons.change_circle_sharp),
                      prefixIconColor: Color(0xff1c3a60),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(10),
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child:  Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Address",
                      prefixIcon: Icon(Icons.fireplace_outlined),
                      prefixIconColor: Color(0xff1c3a60),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(10),
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child:  Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Enter Pin Code",
                      prefixIcon: Icon(Icons.location_on_outlined),
                      prefixIconColor: Color(0xff1c3a60),
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(10),
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 75,
                width: 370,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: (
                          ) {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Add_Product()),
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
                        "Save Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
