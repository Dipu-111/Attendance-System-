// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:intern_project_1/utils/colors.dart';

// class VisitTimelineView extends StatelessWidget with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   const VisitTimelineView({super.key});
//   @override
//   void initState() {
    
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: 
//       Scaffold(
//         backgroundColor: Colors.grey.shade100,
//         appBar: AppBar(
//           title: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Visit Timeline",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'Track your daily activities',
//                   style: TextStyle(fontSize: 12, color: Colors.white),
//                 ),

//                 // Row(
//                 //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //   children: [
//                 //     FilledButton(
//                 //       style: ButtonStyle(
//                 //         backgroundColor: WidgetStateProperty.all(Colors.white),
//                 //       ),
//                 //       onPressed: () {},
//                 //       child: Row(
//                 //         children: [
//                 //           Icon(Icons.trending_up),
//                 //           Gap(4),
//                 //           Text(
//                 //             "Timeline",
//                 //             style: TextStyle(color: AppColors.appBarColor),
//                 //           ),
//                 //         ],
//                 //       ),
//                 //     ),
//                 //     Gap(30),
//                 //     FilledButton(
//                 //       style: ButtonStyle(
//                 //         backgroundColor: WidgetStateProperty.all(
//                 //           const Color.fromARGB(255, 77, 167, 241),
//                 //         ),
//                 //       ),
//                 //       onPressed: () {},
//                 //       child: Row(
//                 //         children: [
//                 //           Icon(Icons.calendar_month),
//                 //           Gap(4),
//                 //           Text("Monthly"),
//                 //         ],
//                 //       ),
//                 //     ),
//                 //   ],
//                 // ),
//               ],
//             ),
//           ),
//           leading: Container(
//             margin: EdgeInsets.all(8),
//             padding: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.white),
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Icon(Icons.arrow_back),
//           ),

//           backgroundColor: AppColors.appBarColor,
//           bottom: TabBar(
//             tabs: const [
//               Tab(
//                 child: Row(
//                   children: [
//                     Icon(Icons.trending_up),
//                     Gap(4),
//                     Text(
//                       "Timeline",
//                       style: TextStyle(color: AppColors.appBarColor),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
