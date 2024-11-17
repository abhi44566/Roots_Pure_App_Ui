import 'dart:async';

import 'package:flutter/material.dart';
import 'package:roots_pure/Sign_in_page/sign_in_page.dart';
class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});
  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}
class _SplaceScreenState extends State<SplaceScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
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
