
import 'package:flutter/material.dart';
import 'package:intern_project_1/views/Timeline.dart';
import 'package:intern_project_1/views/attendance_view.dart';
import 'package:intern_project_1/views/home_view.dart';
import 'package:intern_project_1/views/visit_timeline_monthly_view.dart';
import 'package:intern_project_1/views/visit_timeline_view.dart';

class AppPages {
  static Map<String, WidgetBuilder>  routes = {
    "/":(context)=> HomeView(),
    "/attendance":(context)=> AttendanceView(),
    "/timeline": (context)=>VisitTimelineView(),
    "/timelineMonthly": (context)=> VisitTimelineMonthlyView(),
    "/timelineview":(context)=> TimelineView()
  };
  
}
