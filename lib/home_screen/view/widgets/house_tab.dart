import 'package:flutter/material.dart';
import 'package:home_rent_ui/utils/custom_extension.dart';
import 'package:provider/provider.dart';
import '../../../utils/custom_enums.dart';
import '../../provider/home_screen_provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    super.key,
    required this.homeTabEnum,
  });

  final HomeTabsEnum homeTabEnum;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenProvider>(
      builder: (context, snapShot, child) => GestureDetector(
        // Function to change the tab.
        onTap: () => snapShot.switchHomeTab(homeTab: homeTabEnum),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 100,
          height: 40,
          margin: const EdgeInsets.only(right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: snapShot.currentHomeTab == homeTabEnum
                ? null
                : const Color(0xffF7F7F7),
            borderRadius: BorderRadius.circular(10),
            gradient: snapShot.currentHomeTab == homeTabEnum
                ? const LinearGradient(
                    colors: [
                      Color(0xffA0DAFB),
                      Color(0xff0A8ED9),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : null,
          ),
          child: Text(
            homeTabEnum.name.capitalize(),
            style: TextStyle(
              color: snapShot.currentHomeTab == homeTabEnum
                  ? Colors.white
                  : const Color(0xff858585),
            ),
          ),
        ),
      ),
    );
  }
}
