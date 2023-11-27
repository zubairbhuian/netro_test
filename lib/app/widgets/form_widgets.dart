
import 'package:netro_test/app/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormWidgets extends StatelessWidget {
  final Widget child;
  final String? btnText;
  final Function()? onPressed;
  final EdgeInsetsGeometry? padding;

  const FormWidgets(
      {super.key, required this.child, this.btnText, this.onPressed, this.padding});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // form area
        Expanded(
          child: SingleChildScrollView(
            padding:padding?? EdgeInsets.symmetric(horizontal: 25.w,vertical: 32.h) ,
            child: child
          ),
        ),
        // btn area
        SizedBox(
          height: 100,
          width: double.infinity,
          child: Center(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: PrimaryBtn(
              width: double.infinity,
              onPressed: onPressed,
              child: Text(btnText ?? "Next"),
            ),
          )),
        )
      ],
    );
  }
}