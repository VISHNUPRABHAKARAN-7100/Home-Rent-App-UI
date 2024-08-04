import 'package:flutter/material.dart';
import 'package:home_rent_ui/home_screen/view/widgets/drawer_tab.dart';
import 'package:home_rent_ui/utils/asset_path.dart';
import 'package:home_rent_ui/utils/custom_colors.dart';

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
              ),
              DrawerTab(
                title: "Profile",
                iconPath: AssetPath.profileIconPath,
              ),
              DrawerTab(
                title: "Location",
                iconPath: AssetPath.locationIconPath,
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
              ),
              DrawerTab(
                title: "Notifications",
                iconPath: AssetPath.notificationIconPath,
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
              ),
              DrawerTab(
                title: "Help",
                iconPath: AssetPath.helpIconPath,
              ),
              DrawerTab(
                title: "Log-out",
                iconPath: AssetPath.logoutIconPath,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
