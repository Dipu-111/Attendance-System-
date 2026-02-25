import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intern_project_1/utils/colors.dart';
import 'package:timeline_tile/timeline_tile.dart';

class VisitTimelineView extends StatefulWidget {
  const VisitTimelineView({super.key});

  @override
  State<VisitTimelineView> createState() => _VisitTimelineViewState();
}

class _VisitTimelineViewState extends State<VisitTimelineView>
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
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(Icons.arrow_back),
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
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: AppColors.appBarColor,
                              child: Icon(
                                Icons.person_2_outlined,
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
                                Text("Sales Person"),
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
                Column(
                  children: [
                    TimelineTile(
                      alignment: TimelineAlign.start,
                      isFirst: true,
                      endChild: Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 8),
                        child: CheckInOrOutBox(
                          "Check In",
                          "Started",
                          "04 May25",
                          "9:55 PM",
                          "Thimi",
                          "Bhaktapur",
                        ),
                      ),
                      afterLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        indicator: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.login,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    TimelineTile(
                      alignment: TimelineAlign.start,

                      endChild: Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 8),
                        child: statusBox(
                          "A One Mart",
                          "Tikathali, Balkot , Bhaktapur",
                          "1 hour",
                          "10:00",
                          "11:00",
                          "1,00,500",
                          "1,55,000",
                          "160,000",
                        ),
                      ),
                      afterLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      beforeLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        indicator: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.start,

                      endChild: Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 8),
                        child: statusBox(
                          "Bucketlist Mart Pvt. Ltd",
                          "Anantalingeshwor, Bhaktapur",
                          "30 Min",
                          "11:25",
                          "11:55",
                          "1,00,500",
                          "1,55,000",
                          "160,000",
                        ),
                      ),
                      afterLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      beforeLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        indicator: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    TimelineTile(
                      alignment: TimelineAlign.start,

                      endChild: Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 8),
                        child: statusBox(
                          "Rebound Store",
                          "Tikathali",
                          "1 hour",
                          "10:00",
                          "11:00",
                          "1,00,500",
                          "1,55,000",
                          "160,000",
                        ),
                      ),
                      afterLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      beforeLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        indicator: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    TimelineTile(
                      alignment: TimelineAlign.start,

                      endChild: Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 8),
                        child: statusBox(
                          "Bhaktapur Mini Mart",
                          "Tikathali",
                          "1 hour",
                          "10:00",
                          "11:00",
                          "1,00,500",
                          "1,55,000",
                          "160,000",
                        ),
                      ),
                      afterLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      beforeLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        indicator: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    TimelineTile(
                      alignment: TimelineAlign.start,

                      endChild: Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 8),
                        child: statusBox(
                          "Global Mart",
                          "Tikathali",
                          "1 hour",
                          "10:00",
                          "11:00",
                          "1,00,500",
                          "1,55,000",
                          "160,000",
                        ),
                      ),
                      afterLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      beforeLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        indicator: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    TimelineTile(
                      alignment: TimelineAlign.start,
                      isLast: true,

                      endChild: Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 8),
                        child: CheckInOrOutBox(
                          "Check Out",
                          "Completed",
                          "04 May25",
                          "5:30 PM",
                          "Lumbini",
                          "Bhaktapur",
                        ),
                      ),

                      beforeLineStyle: LineStyle(
                        color: Colors.green,
                        thickness: 2,
                      ),
                      indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        indicator: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.login,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    giveDailySummary(),
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

Widget statusBox(
  String shopname,
  String location,
  String duration,
  String inTime,
  String outTime,
  String due,
  String order,
  String collection,
) {
  return Container(
    // width: double.infinity - 75,
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
        Container(
          decoration: BoxDecoration(),
          child: Column(
            children: [
              // row 1 name and attendance
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    shopname,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: const Color.fromARGB(
                      255,
                      222,
                      236,
                      222,
                    ), // Light green background
                    child: Icon(
                      Icons.check,
                      color: Colors.green, // Green icon
                      size: 18,
                    ),
                  ),
                ],
              ),
              // row 2 = > 2 column => each 2 row
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.green,
                        size: 20,
                      ),
                      Gap(4),
                      Text(location, style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("S.T: $duration ", style: TextStyle(fontSize: 16)),

                      Text("V : $inTime", style: TextStyle(fontSize: 16)),

                      Text("E.T : $outTime", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Gap(4),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),

          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 204, 222, 236),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 199, 197, 185),

                      radius: 10,
                      child: Icon(
                        Icons.edit_document,
                        size: 16,
                        color: Colors.yellow,
                      ),
                    ),
                    const Gap(4),
                    Column(
                      children: [
                        Text(
                          due,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("Due"),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(4),
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: const Color.fromARGB(255, 207, 218, 231),
                      child: Icon(
                        Icons.shopping_cart,
                        size: 16,
                        color: Colors.blue,
                      ),
                    ),
                    Gap(4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(order),
                        Text(
                          "Order",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(4),
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: const Color.fromARGB(255, 222, 232, 224),
                      child: Icon(
                        Icons.attach_money,
                        size: 16,
                        color: Colors.green,
                      ),
                    ),
                    Gap(4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(collection),
                        Text(
                          "Collection",
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
      ],
    ),
  );
}

Widget CheckInOrOutBox(
  String status,
  String completion,
  String exactDate,
  String exactTime,
  String address,
  String destination,
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
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              status,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 241, 244, 242),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
              ),
              child: Text(
                completion,
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [Icon(Icons.alarm), Gap(4), Text("$exactDate, $exactTime")],
        ),
        Row(
          children: [
            Icon(Icons.location_on_outlined),
            Gap(4),
            Text("$address "),
          ],
        ),
        Row(
          children: [
            Icon(Icons.location_on_rounded),
            Gap(4),
            Text("$destination "),
          ],
        ),
      ],
    ),
  );
}

Widget giveDailySummary() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    decoration: BoxDecoration(
      color: AppColors.appBarColor,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 8, offset: Offset(0, 4)),
      ],
    ),
    child: DefaultTextStyle(
      style: TextStyle(color: Colors.white),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.question_mark, color: Colors.white),
                  Text(
                    "Daily Summary",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(children: [Text("No of visits: ")]),
            ],
          ),
          Divider(color: Colors.white),
          Row(children: [Text("Order: ")]),
          Row(children: [Text("Collection: ")]),
        ],
      ),
    ),
  );
}
