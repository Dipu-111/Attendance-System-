import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intern_project_1/utils/colors.dart';

class VisitTimelineMonthlyView extends StatefulWidget {
  const VisitTimelineMonthlyView({super.key});

  @override
  State<VisitTimelineMonthlyView> createState() =>
      _VisitTimelineMonthlyViewState();
}

class _VisitTimelineMonthlyViewState extends State<VisitTimelineMonthlyView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  final List<Map<String, String>> monthlyData = [
    {"date": "Mon, 01 May", "inTime": "9:55 AM", "outTime": "5:30 PM"},
    {"date": "Tue, 02 May", "inTime": "9:30 AM", "outTime": "6:00 PM"},
    {"date": "Wed, 03 May", "inTime": "10:00 AM", "outTime": "5:45 PM"},
    {"date": "Thu, 04 May", "inTime": "9:15 AM", "outTime": "6:15 PM"},
    {"date": "Fri, 05 May", "inTime": "9:45 AM", "outTime": "5:30 PM"},
    {"date": "Sat, 06 May", "inTime": "10:30 AM", "outTime": "4:30 PM"},
    {"date": "Mon, 01 May", "inTime": "9:55 AM", "outTime": "5:30 PM"},
    {"date": "Tue, 02 May", "inTime": "9:30 AM", "outTime": "6:00 PM"},
    {"date": "Wed, 03 May", "inTime": "10:00 AM", "outTime": "5:45 PM"},
    {"date": "Thu, 04 May", "inTime": "9:15 AM", "outTime": "6:15 PM"},
    {"date": "Fri, 05 May", "inTime": "9:45 AM", "outTime": "5:30 PM"},
    {"date": "Sat, 06 May", "inTime": "10:30 AM", "outTime": "4:30 PM"},
    {"date": "Mon, 01 May", "inTime": "9:55 AM", "outTime": "5:30 PM"},
    {"date": "Tue, 02 May", "inTime": "9:30 AM", "outTime": "6:00 PM"},
    {"date": "Wed, 03 May", "inTime": "10:00 AM", "outTime": "5:45 PM"},
    {"date": "Thu, 04 May", "inTime": "9:15 AM", "outTime": "6:15 PM"},
    {"date": "Fri, 05 May", "inTime": "9:45 AM", "outTime": "5:30 PM"},
    {"date": "Sat, 06 May", "inTime": "10:30 AM", "outTime": "4:30 PM"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Center(
            child: Column(
              children: [
                Text(
                  "Visit Timeline",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Track your daily activities',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ),
          leading: Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(16),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),

          backgroundColor: AppColors.appBarColor,
          bottom: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 12),
            controller: _tabController,
            indicatorPadding: EdgeInsetsGeometry.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              shape: BoxShape.rectangle,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 0,
            labelColor: AppColors.appBarColor,
            unselectedLabelColor: Colors.grey[300],

            tabs: const [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.trending_up, size: 20),
                    Gap(4),
                    Text("Timeline"),
                  ],
                ),
              ),

              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.calendar_month, size: 20),
                    Gap(4),
                    Text("Monthly"),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Container(
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Gap(20),
                Container(
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: AppColors.appBarColor,
                              child: Icon(
                                Icons.person_2_outlined,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                            Gap(4),
                            Column(
                              children: [
                                Text(
                                  "Pawan Yadav",

                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Sales Person",
                                  style: TextStyle(
                                    color: AppColors.appBarColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.calendar_month,
                                color: Colors.blue,
                              ),
                            ),
                            Gap(4),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Selected Date"),
                                Text(
                                  "Monday, 04 May 2025",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                Container(
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
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
                              "Feb  2026",
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
                ),
                Gap(20),
                //statistics table
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.appBarColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Center(
                                  child: Text(
                                    "Date",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Center(
                                  child: Text(
                                    "In Time",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Center(
                                  child: Text(
                                    "Out Time",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        height: 600,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListView.builder(
                          itemCount: monthlyData.length,
                          itemBuilder: (BuildContext context, index) {
                            final data = monthlyData[index];
                            return Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.appBarColor,
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          data["date"]!,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          data["inTime"]!,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Text(
                                          data["outTime"]!,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Days: ${monthlyData.length}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.appBarColor,
                  ),
                ),
                Text(
                  "Present : ${monthlyData.length}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.appBarColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TableRow buildTableRow({
  required String fullDate,
  required String fullInTime,
  required String fullOutTime,
}) {
  return TableRow(
    children: [
      Padding(
        padding: EdgeInsets.all(12),
        child: Text(
          fullDate,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(12),
        child: Text(
          fullInTime,
          style: TextStyle(color: Colors.green, fontSize: 16),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(12),
        child: Text(
          fullOutTime,
          style: TextStyle(color: Colors.red, fontSize: 16),
        ),
      ),
    ],
  );
}
