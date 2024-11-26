import 'package:flutter/material.dart';
import 'package:roots_pure/Sign_in_page/sales_report.dart';
class Salse_Report extends StatefulWidget {
  const Salse_Report({super.key});
  @override
  State<Salse_Report> createState() => _Salse_ReportState();
}
class _Salse_ReportState extends State<Salse_Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff1c3a60),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SalseReport()),
            );
          },
        ),
        title: Text(
          "Salse Report",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "July 2024 Monthly Seles Target Report",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff1c3a60)),
                ),
              )
            ],
          ),
          Divider(
            height: 5,
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
                      "Image",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                DataColumn(
                    label: Text(
                      "Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                DataColumn(
                    label: Text(
                      "Price",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                DataColumn(
                    label: Text(
                      "Qty",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),

              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("01/03/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png", height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹3400")),
                  DataCell(Text("100")),]),

                DataRow(cells: [
                  DataCell(Text("2")),
                  DataCell(Text("01/04/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹35,000")),
                  DataCell(Text("88")),]),

                DataRow(cells: [
                  DataCell(Text("3")),
                  DataCell(Text("01/02/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹22,000")),
                  DataCell(Text("99")),]),

                DataRow(cells: [
                  DataCell(Text("4")),
                  DataCell(Text("01/01/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹43.000")),
                  DataCell(Text("30")),]),

                DataRow(cells: [
                  DataCell(Text("5")),
                  DataCell(Text("01/06/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹5,000")),
                  DataCell(Text("₹50")),
                ]),

                DataRow(cells: [
                  DataCell(Text("6")),
                  DataCell(Text("01/07/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹6,000")),
                  DataCell(Text("₹60")),
                ]),

                DataRow(cells: [
                  DataCell(Text("7")),
                  DataCell(Text("01/07/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹7,000")),
                  DataCell(Text("₹70")),
                ]),

                DataRow(cells: [
                  DataCell(Text("8")),
                  DataCell(Text("01/06/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹8,000")),
                  DataCell(Text("₹80")),
                ]),

                DataRow(cells: [
                  DataCell(Text("9")),
                  DataCell(Text("01/06/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹9,000")),
                  DataCell(Text("₹90")),
                ]),

                DataRow(cells: [
                  DataCell(Text("10")),
                  DataCell(Text("01/06/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹4,000")),
                  DataCell(Text("₹30")),
                ]),

                DataRow(cells: [
                  DataCell(Text("11")),
                  DataCell(Text("01/03/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹2,000")),
                  DataCell(Text("₹40")),
                ]),

                DataRow(cells: [
                  DataCell(Text("12")),
                  DataCell(Text("01/03/2024")),
                  DataCell(Image.asset("assets/Medicens_icons/product_4.png",height: 40, width: 40,)),
                  DataCell(Text("Product Name")),
                  DataCell(Text("₹2,000")),
                  DataCell(Text("₹40")),
                ]),

              ],
            ),
          )
        ],
      ),
    );
  }
}
