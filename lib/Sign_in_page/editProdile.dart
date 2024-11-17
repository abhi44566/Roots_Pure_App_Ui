import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';

import 'User_Profile.dart';

class Editprodile extends StatefulWidget {
  const Editprodile({super.key});

  @override
  State<Editprodile> createState() => _EditprodileState();
}

class _EditprodileState extends State<Editprodile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding:  EdgeInsets.only(left: 70),
          child: Text(
            "Profile",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        backgroundColor: Color(0xff1c3a60),

        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard_Page()),
            );
          },
        ),
        // leading: Icon(
        //   Icons.arrow_back_ios_rounded,
        //   color: Colors.white,
        // ),
      ),
      body: Padding(
        padding:  EdgeInsets.all(30),
        child: Column(
          children: [
            Center(child: Image(image: AssetImage("assets/images/download-removebg-preview.png"))),
            Row(
              children: [
                Text("User Id", style: TextStyle(color: Colors.grey),),
                Spacer(),
                Text("#143143", style: TextStyle(color: Colors.grey),),

              ],
            ),
            SizedBox(height: 8,),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name", style: TextStyle(color: Colors.grey),),
                //TextField(decoration: InputDecoration(hintText: 'Abhisherk',hintStyle: TextStyle(color: Colors.red,)),),
                // SizedBox(
                //   child: Container(
                //       height: 30,
                //       width: 180,
                //       child: TextField(decoration: InputDecoration(hintText: "Abhishek Kanaujiya"),)),
                // ),
                Text("Abhishek Kanaujiya", style: TextStyle(color: Colors.grey),),
              ],
            ),
            SizedBox(height: 8,),
            Divider(),

            Row(
              children: [
                Text("Phone Number", style: TextStyle(color: Colors.grey),),
                Spacer(),
                Text("+91 8175052643", style: TextStyle(color: Colors.grey),),
              ],
            ),
            SizedBox(height: 8,),
            Divider(),
            Row(
              children: [
                Text("Email-id", style: TextStyle(color: Colors.grey),),
                Spacer(),
                Text("Lalu@gmail.com", style: TextStyle(color: Colors.grey),),
              ],

            ),
            SizedBox(height: 8,),
            Divider(),
            Row(
              children: [
                Text("City", style: TextStyle(color: Colors.grey),),
                Spacer(),
                Text("Ayodhya", style: TextStyle(color: Colors.grey),),
              ],
            ),
            SizedBox(height: 8,),
            Divider(),
            Row(
              children: [
                Text("State", style: TextStyle(color: Colors.grey),),
                Spacer(),
                Text("Utter Pradesh", style: TextStyle(color: Colors.grey),),
              ],
            ),

            SizedBox(height: 8,),
            Divider(),
            Row(
              children: [
                Text("Sub Admin Member Id", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                Spacer(),
                Text("#25468", style: TextStyle(color: Colors.black),),
              ],
            ),
            Divider(),
            Spacer(),
            SizedBox(
                height: 46,
                width: 320,

                child: ElevatedButton(
                    onPressed: (
                        ) {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Editprodile()),
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
                      "LOGIN",
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
}
