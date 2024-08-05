import 'package:flutter/material.dart';
import 'package:home_rent_ui/home_screen/provider/home_screen_provider.dart';
import 'package:home_rent_ui/utils/custom_enums.dart';
import 'package:home_rent_ui/utils/custom_extension.dart';
import 'package:provider/provider.dart';
import '../../../utils/custom_colors.dart';

class DrawerTab extends StatelessWidget {
  const DrawerTab({
    super.key,
    required this.title,
    required this.selectedIconPath,
    required this.unSelectedIconPath,
    required this.tab,
  });

  final String title;
  final String selectedIconPath;
  final String unSelectedIconPath;
  final DrawerList tab;

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.5,
      child: Consumer<HomeScreenProvider>(
        builder: (context, snapShot, child) => AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          decoration: BoxDecoration(
            color: snapShot.currentTab == tab
                ? Colors.white
                : CustomColors.mainBlue,
            borderRadius: const BorderRadius.horizontal(
              right: Radius.circular(30),
            ),
          ),
          child: ListTile(
            onTap: () => snapShot.switchTab(tab: tab),
            leading: Image.asset(
              snapShot.currentTab == tab
                  ? selectedIconPath
                  : unSelectedIconPath,
              width: screenWidth * 0.055,
              height: screenWidth * 0.055,
            ),
            title: Text(
              tab.name.capitalize(),
              style: TextStyle(
                color: snapShot.currentTab == tab
                    ? CustomColors.mainBlue
                    : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
