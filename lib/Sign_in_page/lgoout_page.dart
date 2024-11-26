import 'package:flutter/material.dart';
import 'package:roots_pure/Sign_in_page/sign_in_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logout_Page extends StatefulWidget {
  const Logout_Page({super.key});

  @override
  State<Logout_Page> createState() => _Logout_PageState();
}

class _Logout_PageState extends State<Logout_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Logout"),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          children: [
            ElevatedButton(onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool('Root_Pure', true);
             Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));
            },
                child: Text("Logout")),
          ],
        ),
      ),
    );
  }
}
