
import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';
import 'package:roots_pure/Sign_in_page/sign_in_page.dart';

import 'editProdile.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({super.key});

  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Text("Profile", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),),
        ),
        backgroundColor: Color(0xff1c3a60),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard_Page()),
            );
          },
        ),

        //leading: Icon(Icons.arrow_back_ios_rounded, color: Colors.white,),
      ),
      body: Padding(
        padding:  EdgeInsets.all(30),
        child: Column(
          children: [
             Center(
                child: Image(
                    image: AssetImage(
                        "assets/images/download-removebg-preview.png"))),
             SizedBox(height: 20),
            Row(
              children: [
                Text("User Id", style: TextStyle(color: Colors.grey)),
                Spacer(),
                SizedBox(
                  width: 160,
                  height: 38,

                  ///1st button
                  child: Button(
                    hintText: "Enter Name",
                    hintColor: Colors.red
                  ),
                ),
              ],
            ),

             Divider(),
            Row(
              children:  [
                Text("Name", style: TextStyle(color: Colors.grey)),
                Spacer(),
                SizedBox(
                  width: 180,
                  height: 38,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Abhishek Kanaujiya",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                    ),
                  ),

                ),
              ],
            ),
             SizedBox(height: 8),
             Divider(),
            Row(
              children: [
                Text("Phone Number", style: TextStyle(color: Colors.grey)),
                Spacer(),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "+91 8175052643",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(height: 8),
            Divider(),
            Row(
              children:  [
                Text("Email-id", style: TextStyle(color: Colors.grey)),
                Spacer(),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Lalu@gmail.com",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
             Divider(),
            Row(
              children:  [
                Text("City", style: TextStyle(color: Colors.grey)),
                Spacer(),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Ayodhya",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(height: 8),
             Divider(),
            Row(
              children: const [
                Text("State", style: TextStyle(color: Colors.grey)),
                Spacer(),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Uttar Pradesh",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Divider(),
            Row(
              children: const [
                Text(
                  "Sub Admin Member Id",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                SizedBox(
                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "#25468",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
             Divider(),
            Spacer(),
            SizedBox(
                height: 46,
                width: 320,
                child: ElevatedButton(
                    onPressed: () {
                      // Edit Profile action
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:  Color(0xff1c3a60),
                        maximumSize:  Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ))),
          ],
        ),
      ),

    );
  }


  Widget Button( {String hintText = "", Color hintColor = Colors.grey } ){
    return TextField(
      decoration: InputDecoration(
         hintText: hintText,
        hintStyle: TextStyle(color: hintColor), // Text color gray
        border: OutlineInputBorder(
          borderSide: BorderSide.none, // No border
          borderRadius: BorderRadius.circular(8), // Circular border radius
        ),
        filled: true, // To apply background color
        fillColor: Colors.grey.shade100, // Optional: Light gray background
      ),
    );

  }
}
