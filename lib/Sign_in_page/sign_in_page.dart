import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../DashBoard/dashboard.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  @override
  State<SignInPage> createState() => _SignInPageState();
}
class _SignInPageState extends State<SignInPage> {

  var firstController = TextEditingController();
  var secondController = TextEditingController();

  void validation() {
    setState(() {
      var first = firstController.text.length;
      var second = secondController.text.length;

      if (first == 10 && second == 6) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Dashboard_Page()));
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc0edee),
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login.png",
                height: MediaQuery.sizeOf(context).height/3,
                width: MediaQuery.sizeOf(context).width,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: Container(
                  height: MediaQuery.sizeOf(context).height/2,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.all(20), // Padding around TextField
                        child: TextField(
                          controller: firstController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.call_outlined,
                              color: Colors.grey,
                            ),
                            hintText: 'Enter your username',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: TextField(
                          controller: secondController,
                          obscureText: true, // To hide the password input
                          decoration: InputDecoration(
                              counterStyle: TextStyle(color: Colors.grey),
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.lock_open_rounded,
                                color: Colors.grey,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 46,
                          width: 270,

                          child: ElevatedButton(
                              onPressed: (

                                  ) async {
                                final SharedPreferences prefs = await SharedPreferences.getInstance();
                                //await prefs.setString('Root_Pure', true as String);
                               await prefs.setBool('Root_Pure', true);
                                validation();
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard_Page()));
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
              ),
            ],
          ),
        ),
      )

    );
  }
}
