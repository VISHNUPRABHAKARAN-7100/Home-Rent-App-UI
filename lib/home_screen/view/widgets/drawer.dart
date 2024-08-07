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
                iconPath: AssetPath.homeIconPath,
              ),
              DrawerTab(
                title: "Profile",
                tab: DrawerList.profile,
                iconPath: AssetPath.profileIconPath,
              ),
              DrawerTab(
                title: "Location",
                tab: DrawerList.location,
                iconPath: AssetPath.locationIconPath,
              ),
              const SizedBox(height: 20),
              Divider(
                color: Colors.white,
                endIndent: screenWidth * 0.55,
              ),
              const SizedBox(height: 20),
              DrawerTab(
                title: "Favorite",
                tab: DrawerList.favorite,
                iconPath: AssetPath.favoriteIconPath,
              ),
              DrawerTab(
                title: "Notifications",
                tab: DrawerList.notifications,
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
                tab: DrawerList.settings,
                iconPath: AssetPath.settingsIconPath,
              ),
              DrawerTab(
                title: "Help",
                tab: DrawerList.help,
                iconPath: AssetPath.helpIconPath,
              ),
              DrawerTab(
                title: "Log-out",
                tab: DrawerList.logout,
                iconPath: AssetPath.logoutIconPath,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
