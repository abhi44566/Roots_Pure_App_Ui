import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:roots_pure/ApiService/loginapi.dart';
import 'package:roots_pure/Models/list_attandance_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dashboard.dart';
import '../Models/mark_attandance_model.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});
  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  String? email;
  final ApiService _apiService = ApiService();
  List<dynamic> attendanceData = [];

  void SendRequest() async {
    Map<String, dynamic> map = {
      "action": 'mark',
      "email": '$email',
    };

    try {
      MarkAttandance? APiData = await _apiService.MarkAttandanceApi(map);
      print(APiData);
      if (APiData?.status == "error") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "${APiData?.message.toString()}",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red.shade300,
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("${APiData?.message.toString()}")));
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void LoadAttendence() async {
    final prefs = await SharedPreferences.getInstance();
    var newEmail = prefs.getString('email');
    Map<String, dynamic> map = {
      "action": 'get',
      "email": '$newEmail',
    };
    try {
      ListAttandance ResponseData = await _apiService.GetAttandanceApi(map);
      if (ResponseData.status == 'success') {
        print(ResponseData.attendance);
        setState(() {
          attendanceData = ResponseData.attendance!; // Save data to state
        });
      }
      //print(ResponseData);
    } catch (e) {
      print(e.toString());
    }
  }


  Future<void> _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      email = prefs.getString('email');
    });
  }

  @override
  void initState() {
    super.initState();
    _loadUserData();
    LoadAttendence();
  }

  // Variables to store the selected date and day
  DateTime _selectedDate = DateTime.now();
  String selectedDay =
      DateFormat('EEEE').format(DateTime.now()); // Default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 60),
          child: Text(
            "Attendance",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Color(0xff1c3a60),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Dashboard_Page()),
            );
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/Icons/mark.png",
                  height: 30,
                  width: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Mark Attendance",
                  style: TextStyle(
                      color: Color(0xff1c3a60),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text('First Name: $firstName'),
                    // Text('Last Name: $lastName'),
                    // Text('Email: $email'),
                    // Text('Mobile: $mobile'),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: GestureDetector(
                // onTap: () {
                //   showModalBottomSheet(
                //     context: context,
                //     builder: (BuildContext context) {
                //       return TableCalendar(
                //         focusedDay: _selectedDate,
                //         selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
                //         onDaySelected: _onDaySelected,
                //         firstDay: DateTime.utc(2020, 1, 1),
                //         lastDay: DateTime.utc(2030, 12, 31),
                //       );
                //     },
                //   );
                // }, // Open the calendar when tapped
                child: Container(
                  height: 90,
                  width: 390,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfff4f9ff),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(DateFormat('d MMMM, yyyy').format(_selectedDate),
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff020204),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              selectedDay,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff020204),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image(
                          image: AssetImage("assets/Icons/calendar.png"),
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 42,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                SendRequest();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff22a89d),
                maximumSize: Size(double.infinity, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                "Mark Attendance",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),

          SizedBox(height: 20,),
          Container(
            child: attendanceData.isEmpty
                ? Center(
                    child:
                        CircularProgressIndicator())
                : Expanded(
                  child: ListView.builder(
                      itemCount: attendanceData.length,
                      itemBuilder: (context, index) {
                        var item = attendanceData[index];
                        return Card(
                          child: ListTile(
                            title: Text(item.date ?? 'Unknown Date', style: TextStyle(color: Colors.blue),),
                            subtitle:
                                Text('Email: ${item.email ?? 'Unknown'}'),
                            trailing: Column(children: [Text('Successfully')],),
                          ),
                        );
                      },
                    ),
                ),
          )
        ],
      ),
    );
  }
}
