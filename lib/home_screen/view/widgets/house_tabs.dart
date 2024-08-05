import 'package:flutter/material.dart';
import '../../../utils/custom_enums.dart';
import 'house_tab.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeTab(homeTabEnum: HomeTabsEnum.house),
          HomeTab(homeTabEnum: HomeTabsEnum.apartment),
          HomeTab(homeTabEnum: HomeTabsEnum.hotel),
          HomeTab(homeTabEnum: HomeTabsEnum.villa),
          HomeTab(homeTabEnum: HomeTabsEnum.cottage),
        ],
      ),
    );
  }
}
