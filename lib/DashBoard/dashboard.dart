import 'package:flutter/material.dart';
import 'package:roots_pure/DashBoard/ManageCustomer.dart';
import 'package:roots_pure/Sign_in_page/User_Profile.dart';
import 'package:roots_pure/Sign_in_page/changed_password.dart';
import 'package:roots_pure/Product/my_Order.dart';
import 'package:roots_pure/Sign_in_page/sales_report.dart';
import 'package:roots_pure/Sign_in_page/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'attendance.dart';
import '../Product/product.dart';

class Dashboard_Page extends StatefulWidget {
  const Dashboard_Page({super.key});
  @override
  State<Dashboard_Page> createState() => _Dashboard_PageState();
}

@override
class _Dashboard_PageState extends State<Dashboard_Page> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f8fd),
      key: _scaffoldKey,
      //  appBar: AppBar(
      // automaticallyImplyLeading: false,
      //    toolbarHeight: 90,
      //    backgroundColor: Color(0xff1c3a60),
      //    title: Padding(
      //      padding: const EdgeInsets.only(bottom: 33),
      //      child: Column(
      //        crossAxisAlignment: CrossAxisAlignment.start,
      //        children: [
      //          Text(
      //            'Welcome',
      //            style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.normal),
      //          ),
      //          Text(
      //            'Lalu Kannaujiya',
      //            style: TextStyle(
      //                fontSize: 20,
      //                fontWeight: FontWeight.bold,
      //                color: Colors.white),
      //          ),
      //        ],
      //      ),
      //    ),
      //    actions: [
      //      Row(
      //        children: [
      //          Column(
      //            mainAxisAlignment: MainAxisAlignment.center,
      //            crossAxisAlignment: CrossAxisAlignment.end,
      //            children: [
      //              Text(
      //                'Sales Target for July',
      //                style: TextStyle(fontSize: 14, color: Colors.white),
      //              ),
      //              Text(
      //                '₹ 10,000',
      //                style: TextStyle(
      //                    fontSize: 16,
      //                    fontWeight: FontWeight.bold,
      //                    color: Colors.white),
      //              ),
      //              Text(
      //                'Achieve Target',
      //                style: TextStyle(fontSize: 14, color: Colors.white),
      //              ),
      //              Text(
      //                '₹ 6,000 / ₹ 4,000',
      //                style: TextStyle(
      //                    fontSize: 16,
      //                    fontWeight: FontWeight.bold,
      //                    color: Colors.white),
      //              ),
      //            ],
      //          ),
      //          SizedBox(width: 10),
      //        ],
      //      )
      //    ],
      //    iconTheme: IconThemeData(color: Colors.white, size: 25),
      //  ),
      // appBar:AppBar(
      //   backgroundColor: Color(0xff1c3a60),
      //   leading: Padding(
      //     padding: const EdgeInsets.all(10.0),
      //     child: GestureDetector(
      //       onTap: (){
      //         Scaffold.of(context).openDrawer();
      //       },
      //       child: Image.asset(
      //         "assets/Icons/nav.png",
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      //   title: ListTile(
      //     title: Text("Welcome"),
      //   ),
      // ),
      //
      // drawer: Drawer(
      //   child: ListView(
      //     children: <Widget>[
      //       ListTile(
      //         title: Text('Item 1'),
      //         onTap: () {
      //           // Handle item tap
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Item 2'),
      //         onTap: () {
      //           // Handle item tap
      //         },
      //       ),
      //     ],
      //   ),
      // ),

      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xff1c3a60),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: Image.asset(
              "assets/Icons/nav.png",
              color: Colors.white,
            ),
          ),
        ),
        title: ListTile(
          title: Text(
            "Welcome",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
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
                          MaterialPageRoute(builder: (context) => Attendance()),
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
                              builder: (context) => const ProductNew()),
                          //builder: (context) => const Add_Product_Conform()),
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
                        ;

                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text("Logout"),
                            content: const Text("Are You Sure want to logout?"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () async {
                                  final SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  await prefs.setBool('Root_Pure', false);

                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text('Logged out'),
                                    duration: Duration(seconds: 2),
                                  ));
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()),
                                  );
                                },
                                child: Text("Logout"),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: const Text("Cancel"),
                              ),
                            ],
                          ),
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
