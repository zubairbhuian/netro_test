import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netro_test/app/core/config/theme/color.dart';
import 'package:netro_test/app/core/config/theme/style.dart';
import 'package:netro_test/app/widgets/appbar.dart';

import '../controllers/application_controller.dart';

class ApplicationView extends GetView<ApplicationController> {
  const ApplicationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF2F8FD),
        appBar: const CustomAppBar(
          title: Text('Hello, Adventurer!'),
          isShadow: false,
          centerTitle: false,
        ),
        body: Center(
          child: Text(
            'Home',
            style: kHeadlineMedium.copyWith(color: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
