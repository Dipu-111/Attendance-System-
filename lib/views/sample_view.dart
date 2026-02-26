import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intern_project_1/utils/colors.dart';

class MonthlyStatisticsView extends StatelessWidget {
  const MonthlyStatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Monthly Statistics",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.appBarColor,
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
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.bottomLeft,
            colors: [
              const Color.fromARGB(255, 157, 195, 226),
              const Color.fromARGB(255, 231, 179, 240),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Month selector
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_left),
                    ),
                    Text(
                      "May 2025",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ),
              Gap(16),

              // Statistics table
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Table
                      Expanded(
                        child: 
                        SingleChildScrollView(
                          child: Table(
                            border: TableBorder(
                              horizontalInside: BorderSide(
                                color: Colors.grey.shade300,
                                width: 1,
                              ),
                            ),
                            columnWidths: {
                              0: FlexColumnWidth(2),
                              1: FlexColumnWidth(1),
                              2: FlexColumnWidth(1),
                            },
                            children: [
                              // Header row
                              TableRow(
                                decoration: BoxDecoration(
                                  color: AppColors.appBarColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                ),
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "Date",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "In Time",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Text(
                                      "Out Time",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // Data rows
                              _buildTableRow(
                                "Mon, 04 May",
                                "9:55 AM",
                                "5:30 PM",
                              ),
                              _buildTableRow(
                                "Tue, 05 May",
                                "9:30 AM",
                                "6:00 PM",
                              ),
                              _buildTableRow(
                                "Wed, 06 May",
                                "10:00 AM",
                                "5:45 PM",
                              ),
                              _buildTableRow(
                                "Thu, 07 May",
                                "9:15 AM",
                                "6:15 PM",
                              ),
                              _buildTableRow(
                                "Fri, 08 May",
                                "9:45 AM",
                                "5:30 PM",
                              ),
                              _buildTableRow(
                                "Sat, 09 May",
                                "10:30 AM",
                                "4:30 PM",
                              ),
                              _buildTableRow(
                                "Mon, 11 May",
                                "9:20 AM",
                                "6:00 PM",
                              ),
                              _buildTableRow(
                                "Tue, 12 May",
                                "9:50 AM",
                                "5:45 PM",
                              ),
                              _buildTableRow(
                                "Wed, 13 May",
                                "10:15 AM",
                                "5:15 PM",
                              ),
                              _buildTableRow(
                                "Thu, 14 May",
                                "9:00 AM",
                                "6:30 PM",
                              ),
                              _buildTableRow(
                                "Fri, 15 May",
                                "9:30 AM",
                                "5:45 PM",
                              ),
                              _buildTableRow(
                                "Sat, 16 May",
                                "10:00 AM",
                                "4:00 PM",
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Table footer with summary
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          border: Border(
                            top: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Days: 12",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "Avg. Hours: 8.0 hrs",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
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
      ),
    );
  }

  TableRow _buildTableRow(String date, String inTime, String outTime) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(date, style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            inTime,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.green[700],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            outTime,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.red[700],
            ),
          ),
        ),
      ],
    );
  }
}
