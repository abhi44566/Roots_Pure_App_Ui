import 'dart:async';
import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';
import 'package:roots_pure/Sign_in_page/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});
  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {
  late SharedPreferences prefs;
@override
  void initState() {
    super.initState();
    _initializeharedPreferences();
  }

  Future<void> _initializeharedPreferences() async {
    prefs = await SharedPreferences.getInstance();

    Timer(Duration(seconds: 3), () {
      final bool? Login = prefs.getBool('Root_Pure');

      if (Login == true) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Dashboard_Page()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SignInPage()),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffb5e5e7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/SplaceScreenLogo.png",
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Text(
                  "P U R E   N A T U R E",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
