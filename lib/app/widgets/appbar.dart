import 'package:netro_test/app/core/config/theme/color.dart';
import 'package:netro_test/app/core/config/theme/style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:netro_test/app/core/utils/int_extensions.dart';
import 'package:netro_test/app/widgets/network_img.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isPrimary;
  final bool isExtraBtn;
  final bool isBackBtnShow;
  final Widget? title;
  final VoidCallback? onLeading;
  final PreferredSizeWidget? bottom;
  final double? preferredHeight;
  final List<Widget>? actions;
  final bool isShadow;
  final bool centerTitle;

  final bool hasActionBtn;
  final void Function()? actionBtnOnTap;
  final String actionBtnText;

  const CustomAppBar(
      {super.key,
      this.isPrimary = false,
      this.isExtraBtn = false,
      this.isBackBtnShow = true,
      this.isShadow = false,
      this.centerTitle = true,
      this.title,
      this.onLeading,
      this.bottom,
      this.preferredHeight,
      this.actions,
      this.hasActionBtn = false,
      this.actionBtnOnTap,
      this.actionBtnText = 'Text'});
// Specify the desired height of the AppBar
  @override
  Size get preferredSize => Size.fromHeight(preferredHeight ?? 56.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: kWhite, // Adjust the background color of the AppBar
          boxShadow: isShadow || !isPrimary ? [kAppbarShadow] : []),
      child: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 10,
          elevation: 0,
          centerTitle: centerTitle,
          leadingWidth: isPrimary ?40: 40,
          backgroundColor: kWhite,
          foregroundColor: kTextColor,
          titleTextStyle: kTitleLarge,
          // appbar leading
          leading: isBackBtnShow
              ? isPrimary
                  // brand logo
                  ? SvgPicture.asset('assets/logo/mr_expert.svg')
                      .marginOnly(left: 20)
                  // back icon
                  : GestureDetector(
                      onTap: onLeading ?? () => Get.back(),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        ),
                      ),
                    )
              : null,
          // appbar title
          title: isPrimary ? const SizedBox.shrink() : title,
          // appbar actions
          // ****** isPrimary          
          flexibleSpace:isPrimary? ClipPath(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [kPrimaryColor, kPrimaryColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // frist row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile',
                        style: kTitleMedium.copyWith(color: kWhite),
                      ),
                      const Icon(
                        Icons.settings,
                        color: kWhite,
                      )
                    ],
                  ),
                  // profile row
                  20.height,
                  Row(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          Badge(
                            backgroundColor: kSuccessColor,
                            label: const CircleAvatar(
                              radius: 4,
                              backgroundColor: kWhite,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xffCCC4FF)),
                              child: const NetworkImg(
                                "",
                                errUrl: "assets/images/default_user.png",
                                width: 48,
                                height: 48,
                              ),
                            ),
                          ),
                          10.width,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Welcome back ",
                                  style: kBodySmall.copyWith(color: kWhite)),
                              Text("Johen Markes",
                                  style:
                                      kHeadlineMedium.copyWith(color: kWhite)),
                            ],
                          )
                        ],
                      )),
                      const Badge(
                        backgroundColor: kSuccessColor,
                        smallSize: 8,
                        child: Icon(
                          Icons.notifications_outlined,
                          color: kWhite,
                        ),
                        // label: ,
                      )
                    ],
                  )
                ],
              ),
            ),
          ):null),
    );
  }

  Widget _button(String label, {required void Function()? onPressed}) {
    return Center(
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.add),
        label: FittedBox(child: Text(label)),
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            foregroundColor: kWhite,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            textStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
      ),
    ).marginOnly(right: 10);
  }
}
