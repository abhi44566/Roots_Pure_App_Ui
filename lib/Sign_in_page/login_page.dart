import 'package:flutter/material.dart';
import 'package:roots_pure/ApiService/loginapi.dart';
import 'package:roots_pure/Sign_in_page/registration_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../DashBoard/dashboard.dart';
import '../Models/login_roots_modlels.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? _errorMessage;
  final _formKey = GlobalKey<FormState>();
  var firstController = TextEditingController();
  var secondController = TextEditingController();
  bool _isPasswordVisible = false;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final ApiService _apiService = ApiService();

  void _validation() {
    String email = firstController.text;
    String password = secondController.text;
    if (email.isEmpty) {
      setState(() {
        _errorMessage = "Please Enter Email";
      });
      return;
    }
    if (password.isEmpty) {
      setState(() {
        _errorMessage = "Please Enter Password";
      });
      return;
    }
    _login(email, password);
  }

  void _login(String email, String password) async {
    try {
      var result = await _apiService.login(email, password);
      print("comming response${result.status}");
      if (result.status != "success") {
        setState(() {
          _errorMessage = result.message.toString();
        });
      } else {
        User user = result.user!;
        String? FirstName = user.firstName.toString();
        String? LastName = user.lastName.toString();
        String? Email = user.email.toString();
        String? Mobile = user.mobile.toString();
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('firstName', FirstName);
        await prefs.setString('lastName', LastName);
        await prefs.setString('email', Email);
        await prefs.setString('mobile', Mobile);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Dashboard_Page()),
        );
            }
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    }
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
                Image.asset(
                  "assets/images/login.png",
                  height: MediaQuery.sizeOf(context).height / 3,
                  width: MediaQuery.sizeOf(context).width,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height / 2,
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
                    child: Form(
                      key: _formKey,
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
                            padding: const EdgeInsets.all(
                                20), // Padding around TextField
                            child: TextFormField(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter email";
                                }
                                return null;
                              },
                              controller: firstController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.grey,
                                ),
                                hintText: 'Enter Your Email',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: TextFormField(
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please enter password";
                                }
                                return null;
                              },
                              controller: secondController,
                              obscureText: !_isPasswordVisible, // Toggles visibility
                              decoration: InputDecoration(
                                counterStyle: TextStyle(color: Colors.grey),
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(color: Colors.grey),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility, // Icon changes with the toggle
                                    color: const Color(0xff8d8d8d),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible; // Toggles the state
                                    });
                                  },
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock_open_rounded,
                                  color: Colors.grey,
                                ),
                              ),
                            ),

                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                              height: 46,
                              width: 270,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    final SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    await prefs.setBool('Root_Pure', true);
                                    _validation();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                       SnackBar(content: Text(_errorMessage!)));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff1c3a60),
                                      maximumSize: Size(double.infinity, 50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      )),
                                  child: Text(
                                    "LOGIN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ))),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
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
                                            builder: (context) =>
                                                Registration_Page()));
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}



