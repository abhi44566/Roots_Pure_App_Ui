import 'package:flutter/material.dart';
import '../DashBoard/dashboard.dart';
import 'package:url_launcher/url_launcher.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});
  @override
  State<Attendance> createState() => _AttendanceState();
}
class _AttendanceState extends State<Attendance> {
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
               Image.asset("assets/Icons/mark.png", height: 30, width: 30,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Mark Attendance",
                  style: TextStyle(
                      color: Color(0xff1c3a60),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18),
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
                      Text(
                        "26 July, 2024 \n Monday",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff020204),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Image(image: AssetImage("assets/Icons/calendar.png",),height: 50,),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
              height: 42  ,
              width: 300,
              child: ElevatedButton(
                  onPressed: ()

                  {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Dashboard_Page()),
                    );
                  },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff22a89d),
                      maximumSize: Size(double.infinity,40),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                      )

                  ),
                  child: Text(
                    "Mark Attendance",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ))),
          // ElevatedButton(
          //   onPressed: () => _launchURL('https://www.youtube.com'),
          //   child: Text('Open YouTube'),
          // )



        ],
      ),
    );
  }
}
