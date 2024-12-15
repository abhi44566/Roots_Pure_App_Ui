import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';
import 'package:roots_pure/Sign_in_page/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'editProdile.dart';

class User_Profile extends StatefulWidget {
  const User_Profile({super.key});
  @override
  State<User_Profile> createState() => _User_ProfileState();
}

class _User_ProfileState extends State<User_Profile> {

  Future<void> _getImageFromCamera(dynamic _picker) async {
    // Request camera access
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      print('Image picked: ${image.path}');
    } else {
      print('No image selected.');
    }
  }
  Future<void> _requestPermissions() async {
    var status = await Permission.camera.request();
    if (status.isGranted) {
      // Proceed with camera access
      _getImageFromCamera;
    } else {
      // Handle the case where the user denied permission
      print("Camera permission denied");
    }
  }
  String? firstName = "";
  String? lastName = "";
  String? email = "";
 // String? password = "";
  var mobile = "";

  @override
  void initState() {
    super.initState();
    _RegisterData();
  }

  void _RegisterData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      firstName = prefs.getString('firstName');
      lastName = prefs.getString('lastName');
      email = prefs.getString('email');
      //password = prefs.getString('password');
      mobile = prefs.getString('mobile')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text(
            "User Profile",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        backgroundColor: Color(0xff1c3a60),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Center(
                child: InkWell(
                  onTap: (){
                    _requestPermissions;
                    _getImageFromCamera;
                  },
                  child: Image(
                      image: AssetImage(
                          "assets/images/download-removebg-preview.png")),
                )),
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  "First Name",
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
                Text(
                  "$firstName ",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Last Name",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "$lastName",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Email",
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
                Text(
                  "$email",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Mobile No:",
                  style: TextStyle(color: Colors.black),
                ),
                Spacer(),
                Text(
                  "$mobile",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),

            Divider(),
            Row(
              children: [
                Text(
                  "Sub Admin Member Id",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "#25468",
                  style: TextStyle(color: Colors.black),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfile()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff1c3a60),
                        maximumSize: Size(double.infinity, 50),
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

  Widget Button({String hintText = "", Color hintColor = Colors.grey}) {
    return SizedBox(
      width: 160,
      height: 38,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: hintColor), // Text color gray
          border: OutlineInputBorder(
            borderSide: BorderSide.none, // No border
            borderRadius: BorderRadius.circular(8), // Circular border radius
          ),
          filled: true, // To apply background color
          fillColor: Colors.grey.shade200, // Optional: Light gray background
        ),
      ),
    );
  }
}
