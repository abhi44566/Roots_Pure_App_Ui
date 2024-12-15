import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../ApiService/loginapi.dart';

import '../Models/sinup_model.dart';
import 'login_page.dart';

class Registration_Page extends StatefulWidget {
  const Registration_Page({super.key});

  @override
  State<Registration_Page> createState() => _Registration_PageState();
}

class _Registration_PageState extends State<Registration_Page> {
  String _errorMessage = "";
  var nameController = TextEditingController();
  var lastController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var mobileController = TextEditingController();

  ///api service call
  final ApiService _apiService = ApiService();

  ///global key of validation
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  // Function to validate inputs
  void validation() {
    String firstName = nameController.text.trim();
    String lastName = lastController.text.trim();
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    var mobileString = mobileController.text.trim();

    Map<String, dynamic> userDetailsMap = {
      "first_name": firstName.toString(),
        "last_name": lastName.toString(),
        "email": email.toString(),
        "password": password.toString(),
        "mobile": mobileController.text.trim().toString()
    };
    _registration(userDetailsMap);
  }

  void _registration(Map<String, dynamic> map) async {
    try {
      SignUpModel? user = await _apiService.SignUp(map);
      print("User : ${user!.status}");
      if (user.status == 'success') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignInPage()),
        );
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("${user.message}")));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              "${user.message}",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red.withOpacity(0.5),
          ),
        );
      }
    } catch (e) {
      // Show error message
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc0edee),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffc0edee),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/login.png",
                height: MediaQuery.sizeOf(context).height / 4,
                width: MediaQuery.sizeOf(context).width,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
                child: Container(

                  height: 480,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      // First Name Field
                      SizedBox(
                        height: 65,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 25, right: 25, top: 10),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter first name";
                              }
                              return null;
                            },
                            controller: nameController,
                            decoration: InputDecoration(
                                hintText: "First Name",
                                prefixIcon: Icon(Icons.person_outline_outlined),
                                prefixIconColor: Color(0xff1c3a60),
                                hintStyle: TextStyle(color: Colors.grey),
                                // focusedBorder: OutlineInputBorder(
                                //   borderRadius: BorderRadius.circular(5),
                                //   borderSide: const BorderSide(
                                //     color: Colors.red,
                                //     width: 1,
                                //   ),
                                // )
                            ),
                          ),
                        ),
                      ),
                      // Last Name Field
                      SizedBox(
                        height: 65,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 25, right: 25, top: 10),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter last name";
                              }
                              return null;
                            },
                            controller: lastController,
                            decoration: InputDecoration(
                              hintText: "Last Name",
                              prefixIcon: Icon(Icons.phone_android),
                              prefixIconColor: Color(0xff1c3a60),
                              hintStyle: TextStyle(color: Colors.grey),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10),
                              // )
                            ),
                          ),
                        ),
                      ),
                      // Email Field
                      SizedBox(
                        height: 65,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 25, right: 25, top: 10),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter email";
                              }
                              return null;
                            },
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: "Enter Email",
                              prefixIcon: Icon(Icons.email_outlined),
                              prefixIconColor: Color(0xff1c3a60),
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      // Password Field
                      SizedBox(
                        height: 65,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 25, right: 25, top: 10),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter password";
                              }
                              return null;
                            },
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              prefixIcon: Icon(Icons.change_circle_sharp),
                              prefixIconColor: Color(0xff1c3a60),
                              hintStyle: TextStyle(color: Colors.grey),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10),
                              // )
                            ),
                          ),
                        ),
                      ),

                      // Mobile Number Field
                      SizedBox(
                        height: 65,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 25, right: 25, top: 10),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter mobile number";
                              }
                              return null;
                            },
                            controller: mobileController,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: "Mobile No",
                              prefixIcon: Icon(Icons.phone),
                              prefixIconColor: Color(0xff1c3a60),
                              hintStyle: TextStyle(color: Colors.grey),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(10),
                              // )
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      // Save Button
                      SizedBox(
                          width: double.infinity,
                          height: 65,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 10),
                            child: ElevatedButton(
                                onPressed: () {
                                  FocusScope.of(context).unfocus();

                                  if (globalKey.currentState!.validate()) {
                                    validation();
                                    print("all fill not");
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff1c3a60),
                                    maximumSize: Size(double.infinity, 50),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    )),
                                child: Text(
                                  "SUBMIT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()));
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
