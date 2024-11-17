import 'package:flutter/material.dart';
import 'package:roots_pure/Manage_Customer/ManageCustomer.dart';
import 'package:roots_pure/Sign_in_page/User_Profile.dart';
import 'package:roots_pure/Sign_in_page/changed_password.dart';
import 'package:roots_pure/Product/my_Order.dart';
import 'package:roots_pure/Sign_in_page/sales_report.dart';
import 'package:roots_pure/Sign_in_page/sign_in_page.dart';
import '../Backend Ui/attendance.dart';

class Dashboard_Page extends StatefulWidget {
  const Dashboard_Page({super.key});
  @override
  State<Dashboard_Page> createState() => _Dashboard_PageState();
}

class _Dashboard_PageState extends State<Dashboard_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f8fd),

      //TODO AppBar

      appBar: AppBar(
        toolbarHeight: 90,
        // leading: Padding(
        //   padding: EdgeInsets.only(bottom: 33),
        //   child: IconButton(
        //     icon: Icon(
        //       Icons.menu,
        //       color: Colors.white,
        //     ),
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => const SignInPage()),
        //       );
        //     },
        //   ),
        // ),
        backgroundColor: Color(0xff1c3a60),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                'Lalu Kannaujiya',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Sales Target for July',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Text(
                '₹ 10,000',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'Achieve Target',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Text(
                '₹ 6,000 / ₹ 4,000',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
        iconTheme: IconThemeData(color: Colors.white, size: 25),
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Attendance()),
                        );
                      },
                      child: Card (
                        elevation: 30,
                        shadowColor: Colors.black,
                        color: Color(0xffffffff),
                        child: SizedBox(
                          width: 148,
                          height: 158,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Icons/calendar.png',
                                  height: 55,
                                  width: 55,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    'Attendance',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff1a395e),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SalseReport()),
                        );
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.black,
                        color: Color(0xffffffff),
                        child: SizedBox(
                          width: 148,
                          height: 158,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Icons/seo-report.png',
                                  height: 55,
                                  width: 55,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    'Sales Repot',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff1a395e),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Product()),
                        );
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.black,
                        color: Color(0xffffffff),
                        child: SizedBox(
                          width: 148,
                          height: 158,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Icons/products.png',
                                  height: 55,
                                  width: 55,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    'Product',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff1a395e),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Product()),
                        );
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.black,
                        color: Color(0xffffffff),
                        child: SizedBox(
                          width: 148,
                          height: 158,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Icons/checklist.png',
                                  height: 55,
                                  width: 55,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    'Order',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff1a395e),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChangePassword()),
                        );
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.black,
                        color: Color(0xffffffff),
                        child: SizedBox(
                          width: 148,
                          height: 158,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Icons/password-manager.png',
                                  height: 55,
                                  width: 55,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    'Changed Pas..',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff1a395e),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const User_Profile()),
                        );
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.black,
                        color: Color(0xffffffff),
                        child: SizedBox(
                          width: 148,
                          height: 158,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Icons/verified.png',
                                  height: 55,
                                  width: 55,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff1a395e),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Manage_Customer()),
                        );
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.black,
                        color: Color(0xffffffff),
                        child: SizedBox(
                          width: 148,
                          height: 158,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Icons/team-management.png',
                                  height: 55,
                                  width: 55,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    'Manag.. Cust',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff1a395e),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Manage_Customer()),
                        );
                      },
                      child: Card(
                        elevation: 30,
                        shadowColor: Colors.black,
                        color: Color(0xffffffff),
                        child: SizedBox(
                          width: 148,
                          height: 158,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Icons/log-out.png',
                                  height: 55,
                                  width: 55,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff1a395e),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 100),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// appBar: AppBar(
// title: Text('Your Title'),
// iconTheme: IconThemeData(
// color: Colors.red, // Drawer icon ka color yaha set karein
// ),
// ),
