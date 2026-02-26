// this page has the two tab bar timeline adn monthly, each having all thw widgets inside
//tabBarView and all the list and the class are inside this

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intern_project_1/utils/colors.dart';
import 'package:timeline_tile/timeline_tile.dart';

class VisitEntry {
  final String shopName;
  final String location;
  final String duration;
  final String inTime;
  final String outTime;
  final String due;
  final String order;
  final String collection;

  VisitEntry({
    required this.shopName,
    required this.location,
    required this.duration,
    required this.inTime,
    required this.outTime,
    required this.due,
    required this.order,
    required this.collection,
  });
}

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

  //adding the entires as list for timeline tab
  final List<VisitEntry> visitEntries = [
    VisitEntry(
      shopName: "A One Mart",
      location: "Tikathali, Balkot , Bhaktapur",
      duration: "1 hour",
      inTime: "10:00",
      outTime: "11:00",
      due: "1,00,500",
      order: "1,55,000",
      collection: "160,000",
    ),
    VisitEntry(
      shopName: "Bucketlist Mart Pvt. Ltd",
      location: "Anantalingeshwor, Bhaktapur",
      duration: "30 Min",
      inTime: "11:25",
      outTime: "11:55",
      due: "1,00,500",
      order: "1,55,000",
      collection: "160,000",
    ),
    VisitEntry(
      shopName: "Rebound Store",
      location: "Lalate, Bhaktapur",
      duration: "1 hour",
      inTime: "10:00",
      outTime: "11:00",
      due: "1,00,500",
      order: "1,55,000",
      collection: "160,000",
    ),
    VisitEntry(
      shopName: "Bhaktapur Mini Mart",
      location: "Tubukache, Bhaktapur",
      duration: "1 hour",
      inTime: "10:00",
      outTime: "11:00",
      due: "1,00,500",
      order: "1,55,000",
      collection: "160,000",
    ),
    VisitEntry(
      shopName: "Global Mart",
      location: "Suryabinayak, Bhaktapur",
      duration: "1 hour",
      inTime: "10:00",
      outTime: "11:00",
      due: "1,00,500",
      order: "1,55,000",
      collection: "160,000",
    ),
  ];

  int get totalVisits => visitEntries.length;

  String get totalOrders {
    // Converting the string amounts to numbers and sum them
    double sum = 0;
    for (var entry in visitEntries) {
      // and also removing the commas and convert to double
      double orderValue = double.parse(entry.order.replaceAll(',', ''));
      sum += orderValue;
    }
    // Format back with commas
    return sum.toString();
  }

  String get totalCollections {
    double sum = 0;
    for (var entry in visitEntries) {
      double collectionValue = double.parse(
        entry.collection.replaceAll(',', ''),
      );
      sum += collectionValue;
    }
    return sum.toString();
  }

  // list for monthly tabbar
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
        body: TabBarView(
          controller: _tabController,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
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
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 0,
                      ),
                      child: Column(
                        children: [
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
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Selected Date"),
                                          Text(
                                            "Monday, 04 May 2025",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
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
                                  padding: const EdgeInsets.only(
                                    right: 16,
                                    bottom: 8,
                                  ),
                                  child: checkInOrOut(
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

                              ...visitEntries.map(
                                (entry) => TimelineTile(
                                  alignment: TimelineAlign.start,

                                  endChild: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 16,
                                      bottom: 8,
                                    ),
                                    child: statusBox(
                                      entry.shopName,
                                      entry.location,
                                      entry.duration,
                                      entry.inTime,
                                      entry.outTime,
                                      entry.due,
                                      entry.order,
                                      entry.collection,
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
                              ),

                              TimelineTile(
                                alignment: TimelineAlign.start,
                                isLast: true,

                                endChild: Padding(
                                  padding: const EdgeInsets.only(
                                    right: 16,
                                    bottom: 8,
                                  ),
                                  child: checkInOrOut(
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
                              giveDailySummary(
                                totalVisits: totalVisits,
                                totalOrders: totalOrders,
                                totalCOllection: totalCollections,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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

                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
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
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
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
          ],
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

Widget checkInOrOut(
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
                  color: AppColors.appBarColor,
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

Widget giveDailySummary({
  required int totalVisits,
  required String totalOrders,
  required String totalCOllection,
}) {
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
                  Icon(Icons.trending_up, color: Colors.white),
                  Text(
                    "Daily Summary",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(children: [Text("No of visits: $totalVisits")]),
            ],
          ),
          Divider(color: Colors.white),
          Row(children: [Text("Order: $totalOrders")]),
          Row(children: [Text("Collection: $totalCOllection")]),
        ],
      ),
    ),
  );
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
