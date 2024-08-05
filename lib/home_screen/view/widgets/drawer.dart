import 'package:flutter/material.dart';
import 'package:home_rent_ui/home_screen/view/widgets/drawer_tab.dart';
import 'package:home_rent_ui/utils/asset_path.dart';
import 'package:home_rent_ui/utils/custom_colors.dart';
import 'package:home_rent_ui/utils/custom_enums.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return ColoredBox(
      color: CustomColors.mainBlue,
      child: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerTab(
                title: "Home",
                tab: DrawerList.home,
                selectedIconPath: AssetPath.homeBlueIconPath,
                unSelectedIconPath: AssetPath.homeWhiteIconPath,
              ),
              DrawerTab(
                title: "Profile",
                tab: DrawerList.profile,
                selectedIconPath: AssetPath.profileBlueIconPath,
                unSelectedIconPath: AssetPath.profileBlueIconPath,
              ),
              DrawerTab(
                title: "Location",
                tab: DrawerList.location,
                selectedIconPath: AssetPath.locationBlueIconPath,
                unSelectedIconPath: AssetPath.locationWhiteIconPath,
              ),
              const SizedBox(height: 20),
              Divider(
                color: Colors.white,
                endIndent: screenWidth * 0.55,
              ),
              const SizedBox(height: 20),
              DrawerTab(
                title: "Bookmark",
                tab: DrawerList.bookmark,
                selectedIconPath: AssetPath.bookmarkBlueIconPath,
                unSelectedIconPath: AssetPath.bookmarkWhiteIconPath,
              ),
              DrawerTab(
                title: "Notifications",
                tab: DrawerList.notifications,
                selectedIconPath: AssetPath.notificationBlueIconPath,
                unSelectedIconPath: AssetPath.notificationWhiteIconPath,
              ),
              const SizedBox(height: 20),
              Divider(
                color: Colors.white,
                endIndent: screenWidth * 0.55,
              ),
              const SizedBox(height: 20),
              DrawerTab(
                title: "Settings",
                tab: DrawerList.settings,
                selectedIconPath: AssetPath.settingsBlueIconPath,
                unSelectedIconPath: AssetPath.settingsWhiteIconPath,
              ),
              DrawerTab(
                title: "Help",
                tab: DrawerList.help,
                selectedIconPath: AssetPath.helpBlueIconPath,
                unSelectedIconPath: AssetPath.helpWhiteIconPath,
              ),
              DrawerTab(
                title: "Log-out",
                tab: DrawerList.logout,
                selectedIconPath: AssetPath.logoutBlueIconPath,
                unSelectedIconPath: AssetPath.logoutWhiteIconPath,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
