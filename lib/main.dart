import 'package:flutter/material.dart';
import 'package:intern_project_1/provider/navigation_provider.dart';
import 'package:intern_project_1/provider/provider_service.dart';
import 'package:intern_project_1/routes/AppPages.dart';
import 'package:intern_project_1/routes/AppRoutes.dart';

import 'package:provider/provider.dart';

final NavigationService navigationService = NavigationService();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        //other providers goes here
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        navigatorKey: navigationService.navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: AppRoutes.attendanceScreen,
        routes: AppPages.routes,
      ),
    );
  }
}
