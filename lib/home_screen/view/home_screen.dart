import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_rent_ui/home_screen/provider/home_screen_provider.dart';
import 'package:home_rent_ui/home_screen/view/widgets/drawer.dart';
import 'package:home_rent_ui/utils/custom_colors.dart';
import 'package:home_rent_ui/wishlist_screen/view/wishlist_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeScreenProvider>(
        builder: (context, snapShot, child) => AnnotatedRegion(
          value: SystemUiOverlayStyle(
            statusBarColor: snapShot.isDrawerOpen
                ? CustomColors.mainBlue
                : CustomColors.backgroundBg,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
          child: const Stack(
            children: [
              DrawerScreen(),
              // Home(),
              WishlistScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
