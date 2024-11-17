import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';
class Change_Password extends StatefulWidget {
  const Change_Password ({super.key});
  @override
  State<Change_Password > createState() => _Change_PasswordState();
}
class _Change_PasswordState extends State<Change_Password > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(title: Text("Attendance"),
        backgroundColor: Color(0xfff5f8fd),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard_Page()),
            );
          },
        ),
        ),
    );
  }
}