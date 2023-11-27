import 'package:netro_test/app/core/config/theme/color.dart';
import 'package:netro_test/app/core/config/theme/style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:netro_test/app/core/services/controller/base_controller.dart';
import 'package:netro_test/app/core/utils/icons.dart';
import 'package:netro_test/app/core/utils/int_extensions.dart';
import 'package:netro_test/app/widgets/network_img.dart';
import 'package:netro_test/app/widgets/popup_dialogs.dart';

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
            boxShadow: isShadow ? [kAppbarShadow] : []),
        child: AppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 10,
          elevation: 0,
          centerTitle: centerTitle,
          leadingWidth: 80,
          backgroundColor: const Color(0xffF2F8FD),
          foregroundColor: kTextColor,
          titleTextStyle: kTitleLarge.copyWith(color: const Color(0xff2F2F2F)),
          // appbar leading
          leading: Center(
            child: CircleAvatar(
              radius: 24,
              backgroundColor: kWhite,
              child: SvgPicture.asset(IconsPath.userFilled),
            ),
          ),
          // appbar title
          title: isPrimary ? const SizedBox.shrink() : title,
          // appbar actions),
          actions: [
            GestureDetector(
              onTap: () {
                 PopupDialog.logOutDialog();
              },
              child: CircleAvatar(
                radius: 24,
                backgroundColor: kWhite,
                child: SvgPicture.asset(IconsPath.logout),
              ),
            ),
            20.width,
          ],
        ));
  }
}
