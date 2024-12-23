import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:roots_pure/DashBoard/dashboard.dart';

import '../Product/sales_report_view.dart';

class SalseReport extends StatefulWidget {
  const SalseReport({super.key});
  @override
  State<SalseReport> createState() => _SalseReportState();
}

class _SalseReportState extends State<SalseReport> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _dateeController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text =
            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";

        _dateeController.text =
            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(60),
            child: Text(
              "Sales Report",
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("  From Date",
                      style: TextStyle(
                          color: Color(0xff1c3a60),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  Text("End Date",
                      style: TextStyle(
                          color: Color(0xff1c3a60),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  Text("Submit",
                      style: TextStyle(
                          color: Color(0xff1c3a60),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _dateController,
                      readOnly: true,
                      style: const TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        hintText: "DD/MM/YY",
                        hintStyle: const TextStyle(fontSize: 14),
                        suffixIcon: GestureDetector(
                          onTap: () => _selectDate(context),
                          child: const Icon(Icons.calendar_month),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _dateeController,
                      readOnly: true,
                      style: const TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        hintText: "DD/MM/YY",
                        hintStyle: const TextStyle(fontSize: 14),
                        suffixIcon: GestureDetector(
                          onTap: () => _selectDate(context),
                          child: const Icon(Icons.calendar_month),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 45,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          backgroundColor: Color(0xff1c3a60)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Text(
                    "  Monthly Sales Target",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff1c3a60)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              height: 2,
              color: Color(0xff1c3a60),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(
                      label: Text(
                    "Sr No",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  DataColumn(
                      label: Text(
                    "Date",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  DataColumn(
                      label: Text(
                    "Achieve Target",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  DataColumn(
                      label: Text(
                    "Total Target",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  DataColumn(
                      label: Text(
                    "View",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("1")),
                    DataCell(Text("01/02/2024")),
                    DataCell(Text("₹1,15,000")),
                    DataCell(Text("₹2,30,000")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Salse_Report()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff1c3a60)),
                          child: Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("2")),
                    DataCell(Text("01/02/2024")),
                    DataCell(Text("₹1,15,000")),
                    DataCell(Text("₹2,30,000")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Salse_Report()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1c3a60),
                          ),
                          child: Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("3")),
                    DataCell(Text("01/02/2024")),
                    DataCell(Text("₹1,15,000")),
                    DataCell(Text("₹2,30,000")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Salse_Report()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1c3a60),
                          ),
                          child: Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("4")),
                    DataCell(Text("01/02/2024")),
                    DataCell(Text("₹1,15,000")),
                    DataCell(Text("₹2,30,000")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Salse_Report()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1c3a60),
                          ),
                          child: Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("5")),
                    DataCell(Text("01/02/2024")),
                    DataCell(Text("₹1,15,000")),
                    DataCell(Text("₹2,30,000")),
                    DataCell(SizedBox(
                      height: 35,
                      width: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Salse_Report()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1c3a60),
                          ),
                          child: Text(
                            "View",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    )),
                  ]),
                ],
              ),
            )
          ],
        ));
  }
}
