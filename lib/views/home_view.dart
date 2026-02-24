import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_project_1/routes/AppRoutes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Home"))),
      body: Column(
        children: [
          FilledButton(
            onPressed: () {
              Get.toNamed(AppRoutes.attendanceScreen);
            },
            child: Text("Employee Attendance"),
          ),
          FilledButton(onPressed: () {}, child: Text("Visit Timeline")),
        ],
      ),
    );
  }
}
