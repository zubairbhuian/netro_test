// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:netro_test/app/core/config/theme/color.dart';

// class CustomBottomNav extends StatelessWidget {
//   final List<BottomNavigationBarItem> items;
//   const CustomBottomNav({required this.items, super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<ApplicationController>(builder: (controller) {
//       return Container(
//         height: 80.h,
//         decoration: BoxDecoration(
//             borderRadius: const BorderRadius.only(
//               topRight: Radius.circular(8),
//               topLeft: Radius.circular(8),
//             ),
//             boxShadow: [kbtnShadow]),
//         child: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           currentIndex: controller.pageIndex,
//           backgroundColor: const Color(0xFFFFFFFF),
//           selectedItemColor: kPrimaryColor,
//           unselectedItemColor: const Color(0xff9F9F9F),
//           selectedFontSize: 14.sp,
//           unselectedFontSize: 14.sp,
//           onTap: (index) {
//             controller.pageIndex = index;
//             controller.update();
//           },
//           items: items,
//         ),
//       );
//     });
//   }
// }
