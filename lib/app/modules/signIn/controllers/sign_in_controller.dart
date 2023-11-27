import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:netro_test/app/core/utils/logger.dart';

class SignInController extends GetxController {
  static SignInController get to => Get.find();

  bool isReadyToSignin = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  


  onReadyToSignin() {
    if (mailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      isReadyToSignin = true;
      update();
    } else {
      isReadyToSignin = false;
      update();
    }
  }
}
