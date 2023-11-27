import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

BottomNavigationBarItem bottomItem({
  required String lavel,
  required IconData icon,
}) {
  return BottomNavigationBarItem(
    label: lavel,
    icon: FaIcon(
      icon,size: 20.sp,
    ).marginOnly(bottom: 5.h),
  );
}
