import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:netro_test/app/core/config/theme/color.dart';
import 'package:netro_test/app/widgets/appbar.dart';

import '../controllers/application_controller.dart';

class ApplicationView extends GetView<ApplicationController> {
  const ApplicationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF2F8FD),
        appBar: CustomAppBar(
          title: Text('Hello, Adventurer!'),
          isShadow: false,
          centerTitle: false,
        ),
        body: Center(
          child: Text(
            'ApplicationView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
