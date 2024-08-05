import 'package:flutter/material.dart';
import 'package:home_rent_ui/home_screen/provider/home_screen_provider.dart';
import 'package:provider/provider.dart';
import 'home_app_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Consumer<HomeScreenProvider>(
      builder: (context, snapShot, child) => AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.translationValues(
            snapShot.xOffset, snapShot.isDrawerOpen ? screenWidth * 0.3 : 0, 0)
          ..scale(snapShot.isDrawerOpen ? 0.9 : 1.00)
          ..rotateX(snapShot.isDrawerOpen ? 0.5 : 0),
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(snapShot.isDrawerOpen ? 30 : 0),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const HomeAppBar(),
              Expanded(
                child: ListView(
                  children: const [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
