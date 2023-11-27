import 'package:netro_test/app/core/config/theme/color.dart';
import 'package:flutter/material.dart';

import '../core/config/theme/style.dart';

TabBar customTabBar({required List<Widget> tabs, bool isScrollable = false}) {
  return TabBar(
      isScrollable: isScrollable,
      labelColor: kPrimaryColor,
      labelStyle: kBodyLarge,
      unselectedLabelStyle: kBodyLarge,
      dividerHeight: 0,
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          return states.contains(MaterialState.focused)
              ? null
              : Colors.transparent;
        },
      ),
      splashFactory: NoSplash.splashFactory,
      splashBorderRadius: BorderRadius.circular(4),
      unselectedLabelColor: kPrimaryColor,
      labelPadding:
          const EdgeInsets.only(bottom: 15, top: 8, left: 16, right: 16),
      indicatorPadding: const EdgeInsets.only(bottom: 5),
      dividerColor: kPrimaryColor,
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2,
          color: kPrimaryColor,
        ),
      ),
      tabs: tabs);
}
