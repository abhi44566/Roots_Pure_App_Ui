import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';
import 'package:roots_pure/Sign_in_page/sign_in_page.dart';
//import '../calender/calender.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}
class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        backgroundColor: const Color(0xff1c3a60),
        title: Center(
          child: Text(
            "Change Password",
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 22, color: Colors.white),
          ),
        ),
      ),
      body: Container(
        child: Column(
          // Changed to Column to properly arrange elements vertically
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Change Your Password",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.center, // Corrected placement
              children: [
                Text(
                  "Enter a new password belong to change \n                     your password",
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Color(0xff8d8d8d), fontSize: 17),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),

              child: TextField(style: TextStyle(color: Colors.red
              ),
                decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(14)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Color(0xff1c3a60))

                    ),
                    hintText: "Enter your Username" ,
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    iconColor: Color(0xff8d8d8d),
                    prefixIcon: Icon(Icons.person_outline_outlined),
                    border: OutlineInputBorder(
                    )
                ),),
            ),

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),

              child: TextField(style: TextStyle(color: Colors.red
              ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(14)

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(color: Color(0xff1c3a60))

                  ),
                    hintText: "Enter your Password" ,
                    hintStyle: TextStyle(color: Colors.grey.shade500),
                    iconColor: Color(0xff8d8d8d),
                    prefixIcon: Icon(Icons.lock_open_rounded,
                      color: Color(0xff8d8d8d),),
                    border: OutlineInputBorder()
                ),),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child:

              SizedBox(
                  height: 50,
                  width: 342,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff1c3a60),
                          maximumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                      child: Text(
                        "Resert Password",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
