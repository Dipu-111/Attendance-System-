import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intern_project_1/utils/colors.dart';

class AttendanceView extends StatelessWidget {
  const AttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Center(child: Text("Employee Attendance")),
        leading: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(Icons.arrow_back),
        ),

        backgroundColor: AppColors.appBarColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //w1  left arrow button
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.arrow_left),
                  ),

                  //w2 row : w1 calender w2 date as today
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today_outlined),
                        Gap(8),
                        Text(
                          "Feb 3, 2026",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //w3 right arrow
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.arrow_right),
                  ),
                ],
              ),
              Gap(10),
              const Center(
                child: Text(
                  "Today",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: statusCard(
                      "8",
                      "Full Day",
                      const Color(0xFFDFF5E1), // light green
                      Colors.green,
                    ),
                  ),
                  Expanded(
                    child: statusCard(
                      "0",
                      "Half Day",
                      const Color(0xFFDDE8FF), // light blue
                      Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: statusCard(
                      "0",
                      "Late",
                      const Color(0xFFFFF4D6), // light orange
                      Colors.orange,
                    ),
                  ),
                  Expanded(
                    child: statusCard(
                      "0",
                      "Absent",
                      const Color(0xFFFFE0E0), // light red
                      Colors.red,
                    ),
                  ),
                  Expanded(
                    child: statusCard(
                      "0",
                      "Pending",
                      const Color(0xFFEAEAEA), // light grey
                      Colors.black54,
                    ),
                  ),
                ],
              ),
              Gap(20),
              // search box
              TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hint: Text("Search employees..."),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                ),
              ),

              Divider(),
              Gap(15),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: AlignmentGeometry.bottomLeft,
                    colors: [
                      const Color.fromARGB(255, 157, 195, 226),
                      const Color.fromARGB(255, 231, 179, 240),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    statusBox(
                      "Pawan Yadav",
                      "Present",
                      "10:00",
                      "6:00",
                      "Kathmandu",
                    ),
                    statusBox(
                      "Himanshu Jha",
                      "Present",
                      "10:00",
                      "6:00",
                      "Kathmandu",
                    ),
                    statusBox(
                      "Nishant Shoni",
                      "Present",
                      "10:00",
                      "6:00",
                      "Kathmandu",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget statusCard(
  String count,
  String label,
  Color backgroundColor,
  Color textcolor,
) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4),

    padding: const EdgeInsets.symmetric(vertical: 12),
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Text(
          count,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textcolor,
          ),
        ),
        Gap(4),
        Text(label, style: TextStyle(fontSize: 12, color: textcolor)),
      ],
    ),
  );
}

Widget statusBox(
  String name,
  String attendance,
  String inTime,
  String outTime,
  String location,
) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(0, 4)),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ListTile(
        //   leading: CircleAvatar(),
        //   title: Text(name),
        //   trailing: TextButton(onPressed: () {}, child: Text(attendance)),
        //   subtitle: Column(
        //     children: [
        //       Row(
        //         children: [
        //           Icon(Icons.login, color: Colors.green),
        //           Text("Check in: $inTime AM"),
        //           Icon(Icons.location_on),
        //           Text("Last Location : $location"),
        //         ],
        //       ),
        //     ],
        //   ),
        // ),
        Container(
          decoration: BoxDecoration(),
          child: Column(
            children: [
              // row 1 name and attendance
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(),
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(0),
                      ),
                      side: BorderSide(color: Colors.green),
                    ),
                    child: Text(
                      attendance,
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              // row 2 = > 2 column => each 2 row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Row(
                            children: [
                              Icon(Icons.login, color: Colors.green, size: 16),
                              Gap(4),
                              Text(
                                "Check in: $inTime AM",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.logout, color: Colors.red, size: 16),

                              Gap(4),
                              Text(
                                "Check Out: $outTime PM",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                                size: 16,
                              ),
                              Gap(4),
                              Text(
                                "Last Location: $location",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.schedule,
                                color: Colors.blue,
                                size: 16,
                              ),
                              Gap(4),
                              Text(
                                "Last Loc Time: $outTime",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Gap(12),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        Gap(4),
        Row(
          children: [
            circularBoxIcons("Target", const Color.fromARGB(255, 33, 222, 243)),
            circularBoxIcons("Visited", Colors.orange),
            circularBoxIcons("Ach%", Colors.pinkAccent),
            circularBoxIcons("Order", const Color.fromARGB(255, 8, 20, 146)),
            circularBoxIcons("Target", Colors.green),
          ],
        ),
      ],
    ),
  );
}

Widget circularBoxIcons(String name, Color backgroundColor) {
  return Expanded(
    child: Column(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 16,
          child: Text(
            '10',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Text(name, style: TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    ),
  );
}
