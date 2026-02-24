import 'package:get/get.dart';
import 'package:intern_project_1/routes/AppRoutes.dart';
import 'package:intern_project_1/views/attendance_view.dart';

class AppPages {
  static final pages = {
    GetPage(name: AppRoutes.attendanceScreen, page: () => const AttendanceView()),
   
    
  };
}
