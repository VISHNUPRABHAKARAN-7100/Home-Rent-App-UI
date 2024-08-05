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
                iconPath: AssetPath.homeIconPath,
                tab: DrawerList.home,
              ),
              DrawerTab(
                title: "Profile",
                iconPath: AssetPath.profileIconPath,
                tab: DrawerList.profile,
              ),
              DrawerTab(
                title: "Location",
                iconPath: AssetPath.locationIconPath,
                tab: DrawerList.location,
              ),
              const SizedBox(height: 20),
              Divider(
                color: Colors.white,
                endIndent: screenWidth * 0.55,
              ),
              const SizedBox(height: 20),
              DrawerTab(
                title: "Bookmark",
                iconPath: AssetPath.bookmarkIconPath,
                tab: DrawerList.bookmark,
              ),
              DrawerTab(
                title: "Notifications",
                iconPath: AssetPath.notificationIconPath,
                tab: DrawerList.notifications,
              ),
              const SizedBox(height: 20),
              Divider(
                color: Colors.white,
                endIndent: screenWidth * 0.55,
              ),
              const SizedBox(height: 20),
              DrawerTab(
                title: "Settings",
                iconPath: AssetPath.settingsIconPath,
                tab: DrawerList.settings,
              ),
              DrawerTab(
                title: "Help",
                iconPath: AssetPath.helpIconPath,
                tab: DrawerList.help,
              ),
              DrawerTab(
                title: "Log-out",
                iconPath: AssetPath.logoutIconPath,
                tab: DrawerList.logout,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
