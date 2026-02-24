import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intern_project_1/utils/colors.dart';

class VisitTimelineView extends StatelessWidget {
  const VisitTimelineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
            //   FilledButton(
            //     onPressed: () {},
            //     child: Row(
            //       children: [Icon(Icons.trending_up), Gap(4), Text("Timeline")],
            //     ),
            //   ),
            // ],
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
      ),
    );
  }
}
